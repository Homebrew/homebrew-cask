cask "firefox@nightly" do
  version "140.0a1,2025-05-14-21-17-00"

  language "ca" do
    sha256 "7339cd3f6b71d429cd9a966b82d81541fe9351b28c59afcce5cac9e0d6bbbbe5"
    "ca"
  end
  language "cs" do
    sha256 "614a4233941c40ed79075f01e6f685d38965bf508a839cd688f289903f230e39"
    "cs"
  end
  language "de" do
    sha256 "36909785107707889a672a7e1ac63b1e55de590b6033c7b7a04710ec5a71f4c5"
    "de"
  end
  language "en-CA" do
    sha256 "e2dd681ca3fdf63387cfc54aec238aeda7397fe93e01c3af8a93e1b5fbd8030d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b04dbd74f4afeca441ed8cc9fcb6ebebf624bcf48cbf6d4b89ced7e634075bc8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b673724b907fcc88e28620e9c9d09ea70eda35980fb25007ec7c8cf5c3b56d4c"
    "en-US"
  end
  language "es" do
    sha256 "b7adda7119915dcda88b6630cc2e6072fef2bb21e9390ebdfa4684e0f9940516"
    "es-ES"
  end
  language "fr" do
    sha256 "4bc6af2c828e88fa09f4d2848a28b4b12e4d4d19fb644f853e27221170e40b59"
    "fr"
  end
  language "it" do
    sha256 "237383a5a5ad6298f0fcc5c944606c15b71b120bf4eb2d6660c8fceab7b297a1"
    "it"
  end
  language "ja" do
    sha256 "c1cd3f2cebab701c863a4160e345c0f4d3e45b8bea422688e33cf445ed910ec0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ccf2e5079cb5761714efca4025a9b16fd1b0ec5226f776de114ea63589973c50"
    "ko"
  end
  language "nl" do
    sha256 "4abf3d0c123f17ce623a5a10b4951d4a95b1f2c79ec00c1b6c36ed33bea0c6d2"
    "nl"
  end
  language "pt-BR" do
    sha256 "869b6f18bc7d13ff8c5a2bf22100ddf6b7302d69df22e38139c2e5e4cb363001"
    "pt-BR"
  end
  language "ru" do
    sha256 "f3e4dab62bfbd46f4382d9869ad5311fccb6b5e82c0685192ed6ad140160bd3b"
    "ru"
  end
  language "uk" do
    sha256 "e83eb963a7d08993b7426bbefa7fd2d43b780b677ce85ad4b170f754e9a566c0"
    "uk"
  end
  language "zh-TW" do
    sha256 "dd864bf5c4463ee23d11a184a0777d1217ef30b83602eb857154f525f8af3453"
    "zh-TW"
  end
  language "zh" do
    sha256 "381caabebe5e92815235f223ee5d763a2f39f80684f3c1284d1ce500906298f2"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
