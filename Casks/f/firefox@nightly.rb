cask "firefox@nightly" do
  version "156.0a1,2026-08-14-09-02-31"

  language "ca" do
    sha256 "e274401293baf6e12b1013086ee71e86313ab69ab0fd09df54dc10f654a0145e"
    "ca"
  end
  language "cs" do
    sha256 "bd1a96896634c46596e3562e56d8a11b89f0b54c6a0108dfbe29f0df1c2bcac9"
    "cs"
  end
  language "de" do
    sha256 "c6782946ce9c29c35453a59307ae74eb0fd4d8613249617fb768d3f963f2f1b3"
    "de"
  end
  language "en-CA" do
    sha256 "1bf6e7a7c7b577b7a8329688882bc190460a1a96abad3cb110e8740baefff08d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "493a8a516bda783fad223e8d3fa0ea98b93102e3a6cca13a437bc4c1c52b9f84"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e36d39b8a50ff1c0ed24caf10e8aa23f81b7f02db18a83c12867e36a8f2cbae0"
    "en-US"
  end
  language "es" do
    sha256 "cd47aeca2c78dfe78cb6cc6c32dccbdbaf06301503d2ba933cde71f566818374"
    "es-ES"
  end
  language "fr" do
    sha256 "af71dd8c6e8683b47ff1e081ced093a6783dc81819f77788c480d80a63a300a5"
    "fr"
  end
  language "it" do
    sha256 "5378f59f40df99e73980887eb4dacbbe76698fe70a53a8ce77f411643f5ed4df"
    "it"
  end
  language "ja" do
    sha256 "3e5a0b0b09e09af835d757b220f4f50c5c70707263efe8da0129006fe9ec3d5c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6da763d496c087b8db0da5a9e9736f7513014fda45b643a99931c0f1fe2ad99e"
    "ko"
  end
  language "nl" do
    sha256 "7a4b4bb8ac5e1079bcaccacb77672051fd90b8b426811214993c5a9690671159"
    "nl"
  end
  language "pt-BR" do
    sha256 "024ffabf3ff5048e5d4144bae937522f31a8a87de22a09264cfe412ab8413095"
    "pt-BR"
  end
  language "ru" do
    sha256 "ca884e0fb4498f4431d5abeb1c9de7660115f1e883f82463c041dbb8a498de3f"
    "ru"
  end
  language "uk" do
    sha256 "450932a9d546c3ca7dc7a3df26c619fbe835cbb4ecf999a285e04c772c521acf"
    "uk"
  end
  language "zh-TW" do
    sha256 "d2de5ef0e911d2e6e33664086cfe72ece8a9b3064bdf097579a1bdbc5f7274dc"
    "zh-TW"
  end
  language "zh" do
    sha256 "c49d14ca796a81f70315c332061f0cc47c516ca56aa936dc7715b12fb5d820dc"
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
