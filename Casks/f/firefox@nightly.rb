cask "firefox@nightly" do
  version "156.0a1,2026-08-15-21-38-49"

  language "ca" do
    sha256 "19f49564fb1a07587d16e82ee2b21e0a332807f40bc04f7d0aa0b3bda4427396"
    "ca"
  end
  language "cs" do
    sha256 "fa09b412d771fecaa738bff4349b22e7c91002ebf973fc25e6dc9d7b095b9f6a"
    "cs"
  end
  language "de" do
    sha256 "96c153b5bfcbbccd2753bab584218f3b72b565da5cfbbd7d5c82156743ea2785"
    "de"
  end
  language "en-CA" do
    sha256 "fa9aaa1c86cc794a00077d51fe02f6d154a85fc73fc9e14dc50a78cff4bca70e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f79bd03d403f009117f277f60a1b3d6a97a358af6d1e7359579581b5a33d6884"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3db3a060bd501d7beda936d35793680afa021dc3d3ff5339aa20cc7b1aa78cb8"
    "en-US"
  end
  language "es" do
    sha256 "ad58de7a46670fed1c494a1584cd3ecc8ff2b66b47b1aad1e2a362bf66181900"
    "es-ES"
  end
  language "fr" do
    sha256 "e4ece30349430fb790a91ec2639a2e90801215ea0d896d73d11d796c455f16c4"
    "fr"
  end
  language "it" do
    sha256 "a388310071140452f026865d9ef646c6ca855404995e79ee5edec60f72e52b7c"
    "it"
  end
  language "ja" do
    sha256 "2333b875e81c8ed08857fa15e0272a77c9a8410116d0111b4b652822a4e2780e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e71cfb8380b6726cc8314a3633c2db4b09349a8d2cb7d2e57bba9a44de4e3238"
    "ko"
  end
  language "nl" do
    sha256 "bccbffcd0e89ac975e4b09fabba8025e1ffc5a96b4898191d981380488822234"
    "nl"
  end
  language "pt-BR" do
    sha256 "816e96c922b10a7dc3161127f129a1dc2d3c311ede499cfb3f054a0656e17884"
    "pt-BR"
  end
  language "ru" do
    sha256 "5043d76b553e73f245beabab6130fa415e2cb49f261d4b15f145cab788557c0a"
    "ru"
  end
  language "uk" do
    sha256 "60917a0bc5bd79712624268112d2c50b4ac40ac2dc8de503be3d3b2a3af5b5fa"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ad2d057cef4ce014e0abc79337283897ad2923db2d289d9064e53efd1c4d685"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d5239abd6eaf8edad45b60edbdbec8bfff4d9bc57092fb807332e277f639f5a"
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
