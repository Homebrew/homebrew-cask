cask "firefox@nightly" do
  version "154.0a1,2026-06-19-04-41-08"

  language "ca" do
    sha256 "23d3fceec38df5250d4a02045f22e5a65ed228b90de75b59322ba32916748c0a"
    "ca"
  end
  language "cs" do
    sha256 "531a91bd0c52542ac168ffd6d90d9c4e7fd986d8a50b9b67f649ea6608aacbdf"
    "cs"
  end
  language "de" do
    sha256 "cdceb7817883ce579cc113b0281ce3d7f6110460da68ec32af8ec60f0d647a88"
    "de"
  end
  language "en-CA" do
    sha256 "3857d6b6bcd7b7ab6369dfc82e3399dc15f64ddcf8ad5d1920b7dde55fe9e85e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a30d293351f3a1fae76421a71905ee3fef0e502e33d5dadc7fb308acce22251b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "deb343404e557d5cc47a9a13c8c6ab58fe9da8ee669956b7b88faacfdfbe2ef5"
    "en-US"
  end
  language "es" do
    sha256 "bd2bd59365529f1e91cf2aa6771f69c25844de394e01cced38d61030ab48b627"
    "es-ES"
  end
  language "fr" do
    sha256 "5069bdcfd5882db12ce18be71f7519f10b28f93bc9704ad32883ae9b27c41900"
    "fr"
  end
  language "it" do
    sha256 "7db58183bb3a87207cc11c18347aca7ed58122b8f68ef3409392c1c48b3c697b"
    "it"
  end
  language "ja" do
    sha256 "b16bfcb75e0bacfa51db8e6ee323af2e7eba31040f0fc68c5972ab0396367976"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e5ccaa617a44bfdeca4f4f29b2ceb77da153f7e36ef20f26a60725f3e36a0949"
    "ko"
  end
  language "nl" do
    sha256 "1ffe8ca0e5be10dc1f6c76ba53183e6f26a8d0678abf5d2b97f56cb922f3c8e0"
    "nl"
  end
  language "pt-BR" do
    sha256 "d8cfccc22c053a9c4280238b2df5fc5bfed3866090de6f6186745d23425ea237"
    "pt-BR"
  end
  language "ru" do
    sha256 "f86e43d33fc7c52627069091382c6273774ae25793c4671b910b1f0a046a4c0b"
    "ru"
  end
  language "uk" do
    sha256 "b2742159f1f46bee5d69ec5ecf80ba331c82411dc3b86abfc1815917ce34c3bd"
    "uk"
  end
  language "zh-TW" do
    sha256 "df9d7f9865283069a6b2424e56ab3bebd1973232cd30b434b362eee2f0d4fdc8"
    "zh-TW"
  end
  language "zh" do
    sha256 "1ccfacbc7f5c21ce96711317dd8a3c79d4f77e2f111f55bc260875d6b461bd5d"
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
  depends_on :macos

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
