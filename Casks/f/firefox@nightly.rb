cask "firefox@nightly" do
  version "156.0a1,2026-08-15-08-56-31"

  language "ca" do
    sha256 "480230232e02df3f298d84be48b34384bd825d4c0de44b941c8e8cd950daa914"
    "ca"
  end
  language "cs" do
    sha256 "994ca527dda9fb8980e2a97cc6ea54af450e16a734241a74b324545eec8cc7f3"
    "cs"
  end
  language "de" do
    sha256 "e3d1be754e702bf890ed163613ada0635329162dd3fe750dcc3f3805f69ed30a"
    "de"
  end
  language "en-CA" do
    sha256 "df5f9c153fc7be1fdec301c061deed1e9c8fcc3979a1e947f2e92be1683c06d6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a36a651916ea2f03c64ae7882b893829bdcdbe72684a0a20258873696392f45e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8eea7080e58f93640c82c2e12065b7f8f385f848457bd0e9fe691048f797793d"
    "en-US"
  end
  language "es" do
    sha256 "3d11daa13812e647bde1f25a81d66b671167eed3d1265b97c4ac4ac9450d5699"
    "es-ES"
  end
  language "fr" do
    sha256 "332f57cd46f8946e698a268051838e7f893e7e64e849ece944aa9c024167d6d6"
    "fr"
  end
  language "it" do
    sha256 "a6a28638b303754a925ced08a03a6fdcf8a11dc0e957694adf2f6998e404be2a"
    "it"
  end
  language "ja" do
    sha256 "7f23e5a4652fdd7075c31c891cb03a44332354b5ae83d3fb8fe27a891ba5fda1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a668715d31d9c4c6839585d8f7dea913805badf007a4b19e0d1286d2565f821a"
    "ko"
  end
  language "nl" do
    sha256 "e4181a99743e569a7d82b651779ab0a71e0b961a9963dcecde9e1610a16f9f30"
    "nl"
  end
  language "pt-BR" do
    sha256 "419ad7c28a359f65b23ce6dfd6265886544ba2a752d02cffd2a5befb7b79ccb4"
    "pt-BR"
  end
  language "ru" do
    sha256 "4c530296f49b2da7013e9ccb03174bba8e200405e835682345f02f99050c1f93"
    "ru"
  end
  language "uk" do
    sha256 "338204bd502ea176974d2f3a920bb51947beecfd68db5f2c505eb464ccac1abd"
    "uk"
  end
  language "zh-TW" do
    sha256 "f7214e39b9af1577d07a21633036c8b7e937b5d7d75da4deb6aca40a85cfc692"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6788fafb0b1c22df0acc70f952ab7f5ef4cb6db4617a0e9daf4725bf42ac7dd"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
