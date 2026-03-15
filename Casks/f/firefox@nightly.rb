cask "firefox@nightly" do
  version "150.0a1,2026-03-14-21-27-57"

  language "ca" do
    sha256 "f6cda2465160107424307b8def6f1c6c9239458237372f0c8ee7d588ea55747b"
    "ca"
  end
  language "cs" do
    sha256 "85f78f88703ca26383a16a8e80630e03d4746c424f0b954ed7d7f93026e10423"
    "cs"
  end
  language "de" do
    sha256 "dc34b392f4bcdc09c38b223d09ae158d3d61f531836a69f7cb5517c2858d9473"
    "de"
  end
  language "en-CA" do
    sha256 "a3fe9ddc9edfdec07755bc5de2d2cb4a83814bbd729bf2b5c2a2a9e86035ea32"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d3c2a7c442ef5b5e013ee92631559b6d22094746784df89878aae2ed5c297f2d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f39d66f768d199a3912936681863a46b4f91c93092766da9fba4e8d0d8b041b1"
    "en-US"
  end
  language "es" do
    sha256 "5a3d1cf43e2389084bfa4bbaab6539b0fb6f0cbd431eb6f3b58efd9f76fec70b"
    "es-ES"
  end
  language "fr" do
    sha256 "d5ffdb5305666777d16b561d48de0179b78edd41bcb783d6a62a3a3bf3188437"
    "fr"
  end
  language "it" do
    sha256 "16b4bd36482b0dcdb50c2b975cb023da7da1e69e2f1e1ad0b1562c5b23c048df"
    "it"
  end
  language "ja" do
    sha256 "b4017e4212b78bd29f673534eb1855c56bdba4046d2dcf8f9ba6bc777c853302"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5277721490e97a333235d6d17a773f1c5f79f5f53a39f59abec5294bd1420bcc"
    "ko"
  end
  language "nl" do
    sha256 "ab5d33f8bb888701f2c65b68d8264dad51b33e4ada2afdfb625e12284d553856"
    "nl"
  end
  language "pt-BR" do
    sha256 "0b6fbe5e15caf291db654e936e21707038ae300de59e05d3013879c456541ca9"
    "pt-BR"
  end
  language "ru" do
    sha256 "28237836395353a9815eb503110e831e6ed7f5713875ec01ffc8599a1825c3a1"
    "ru"
  end
  language "uk" do
    sha256 "1eb2e86a4901b771979ef17d9bce626359fa5f3cd59aad01ae561f5fc01ab558"
    "uk"
  end
  language "zh-TW" do
    sha256 "19d843ae5e62458fbdcb847927bbc434e9f222688d63829beb8f18bbf8d435fb"
    "zh-TW"
  end
  language "zh" do
    sha256 "0807df1c236c3236f18d1360f84bf0cde92056c37bae0fc27430c3979a196c31"
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
