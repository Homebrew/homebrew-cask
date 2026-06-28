cask "firefox@nightly" do
  version "154.0a1,2026-06-27-20-33-48"

  language "ca" do
    sha256 "e08bb259c7b3fe823bcb36e439d09840a1c9eef1fe9f7c1037747d798a14070b"
    "ca"
  end
  language "cs" do
    sha256 "e975270c3b0a7701a19a04e7625501d55f4128ce170242f59225f8ec96e64b0e"
    "cs"
  end
  language "de" do
    sha256 "bc2449b1d3866fc967a8bf638354747498458b068dbaddee33b7969046071576"
    "de"
  end
  language "en-CA" do
    sha256 "603dd9ad85ea31a178a73ac8485685ca6b9caa8cd50e604a52c074b67e2a8a91"
    "en-CA"
  end
  language "en-GB" do
    sha256 "98b136ee3597248c6ce2c22cb6d9040a914ae03bd6f150e8dc6ec8d4a72943e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d381cc3835c7ca1e10ff2ae79ecd3dfc5c67deab04f2cee0d60976dad454c3f6"
    "en-US"
  end
  language "es" do
    sha256 "e46f7e94300185b0c4936aeb257fddb68ce43ef14e6f635e93200c2cec173c6c"
    "es-ES"
  end
  language "fr" do
    sha256 "c6ec1fed9e6782b7ffaa389eea19eadc23df3799fb09ec2cf62fd4633608607e"
    "fr"
  end
  language "it" do
    sha256 "ddc9faa6517fe1b5d3cd9fde498e951f8119ee684a2b55f1bd4a34e557bb8da8"
    "it"
  end
  language "ja" do
    sha256 "8e12c321cc0a715934218a6e5cc68ef511a798e936fdeb987d37f48e2a0b3229"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0c0d8cc00e9ea7bb4218e2da0260e48932fb4c5bb1f2e6a31e7a65ad54fc25ee"
    "ko"
  end
  language "nl" do
    sha256 "d368fb499463266da3f9cbe276c3dc8e4e3e674263126cb25f0c8b6dfbc1b41d"
    "nl"
  end
  language "pt-BR" do
    sha256 "f22309804958ddf33bdba07896794e749b13e23c1dc98582a1cc222a93ee1763"
    "pt-BR"
  end
  language "ru" do
    sha256 "31aac2708e8da74004d281d3662e918f0146c9f61f0144d0aed73879c7d7f34b"
    "ru"
  end
  language "uk" do
    sha256 "1f54334fdcc887aa5f7b3cf7348992f423da36dfdb761ab7cd223a195ba8945e"
    "uk"
  end
  language "zh-TW" do
    sha256 "3305610962589b1cacff33483fc54004959e7323d43312c127a149ed58d76fe8"
    "zh-TW"
  end
  language "zh" do
    sha256 "1fc3a4d685a14b6352c368641471d59cf5783200acd0216db769490d1f54d1ba"
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
