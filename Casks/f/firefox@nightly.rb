cask "firefox@nightly" do
  version "151.0a1,2026-04-15-15-43-14"

  language "ca" do
    sha256 "1e1b3ae5e3c0dd18b43487bebbfb4aab26d52d5f3e5e1fd2dd0b3a006ff3d004"
    "ca"
  end
  language "cs" do
    sha256 "fb66bcac7f22b6b0b1345659617f15cd8e06957891664c43caf5387727d96c1d"
    "cs"
  end
  language "de" do
    sha256 "7fee932e553afdd1c7788958f078188c68a5784531a29f7c922e90bb920c3682"
    "de"
  end
  language "en-CA" do
    sha256 "c01abedb062e7bdc52517e81d15e762ab952bbdb21e0e656c015e5663a40e6ec"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7d753459278f090698120ab83a935e1e188723d4e246d51f2591334cec9cbeec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb305a9f6a9839ba4f4fedcd9e746382bbb7ceb84eeb333ac74c2cb17d7f660e"
    "en-US"
  end
  language "es" do
    sha256 "58e916403f50038a96cacd2c64ceaa79674a7577ca187d3a4d098483976f4957"
    "es-ES"
  end
  language "fr" do
    sha256 "834af4da2a7d0a17e19466812110700f83e49bd937741875352b2c30e31a54c9"
    "fr"
  end
  language "it" do
    sha256 "4881bc7b94b09c0995919ca20734e0cd7adb1d41ffadca9b5547bb9519b40ed0"
    "it"
  end
  language "ja" do
    sha256 "9e31cb771e8233cabfbeef238059490713c085a12efffd68ee7243ca7d8f799e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3ed185c86c4509a8c90adda5437808b280fcd20ffd5eed2c0b75712cc4d904fb"
    "ko"
  end
  language "nl" do
    sha256 "aab04bcaa24b5c58ea288fa6e92ee2d4ee9db7753190ea99e9d48dda0e7e5d61"
    "nl"
  end
  language "pt-BR" do
    sha256 "1769cf91e8961070a385ff07171771274f3e79ec537906044176bdbc46c23766"
    "pt-BR"
  end
  language "ru" do
    sha256 "202cdae04eb831b22e83310999d1731aaff98f974f915f23726eb92de531ab84"
    "ru"
  end
  language "uk" do
    sha256 "23a64ec868efc9b981a829c860f223bdb6127d558e7c048ca58c0ef2b3ef06c7"
    "uk"
  end
  language "zh-TW" do
    sha256 "28604bee21a62dde27e3bb2bdbf1c1e67dd5607e826ff9f363acbf02c69b9fc5"
    "zh-TW"
  end
  language "zh" do
    sha256 "43468a0bc71a388f4def9859c73407a217e6c2fd1c8f2513e8028dcd61a5f1c4"
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
