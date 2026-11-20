cask "firefox@nightly" do
  version "163.0a1,2026-11-20-09-47-25"

  language "ca" do
    sha256 "06006019c70e77b041f89690eabe163efde9a1b01280d28b11740511551e08bd"
    "ca"
  end
  language "cs" do
    sha256 "af13af38024d08d8c2e42dfde31fbb2ee7bae18463957e81fa95a3fc684fbb30"
    "cs"
  end
  language "de" do
    sha256 "ec2608a7bcab680546f5b8d9c18c663f7c2afd011c808f84f46991e745eb2a17"
    "de"
  end
  language "en-CA" do
    sha256 "0d6375d2aca19ca5f9d06c20a57bf80e906f47be711b6dc39e649573e904f104"
    "en-CA"
  end
  language "en-GB" do
    sha256 "816cec29a401b64b0c5069e7f1f03434c0933a776201090b01d6bd3a4347ffdb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9ed8f0d7d24a081d4f69a909de5205e5c2f4a19a349ef9cef526264caf8f2e14"
    "en-US"
  end
  language "es" do
    sha256 "fc15b7b6c450d88b8d0ec746517576adf017e78bfbf825a5b8eeb47e45254b4c"
    "es-ES"
  end
  language "fr" do
    sha256 "5c4dd5d9e87271f4501361b3620c880b84937e44956f057bc70f241c0bc37ff7"
    "fr"
  end
  language "it" do
    sha256 "44653d67e185e74a036b5a307b9695876eec5c59a24ed1560f5374d2a78531b5"
    "it"
  end
  language "ja" do
    sha256 "c10da98dcd9015b67f397ce946adee6723dec0489b26ca7085fe0362c4358343"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d4d8e65091669384024888c45b5275fd7550dc46330ad217fc6746f4b6f5cd84"
    "ko"
  end
  language "nl" do
    sha256 "57e64ad0103bf94ab4db32c302b93417af1cb3d5d5644108e3adc530910acdb8"
    "nl"
  end
  language "pt-BR" do
    sha256 "c03a054091d84db943d600628be6910a4c1e600a0c675948e9cf72f2ccc84bcf"
    "pt-BR"
  end
  language "ru" do
    sha256 "291c5ff86d742cdf6a6aed13d57612282e24cfd84ce9077d2436866e57816292"
    "ru"
  end
  language "uk" do
    sha256 "b31727d4319cabc315a4306b16c566fe29dac07277465499d78598cdb385c33c"
    "uk"
  end
  language "zh-TW" do
    sha256 "056181c68f161086752eb99838f28ecc8d7e5a5126e2daa720a6db4e3a75dca5"
    "zh-TW"
  end
  language "zh" do
    sha256 "0466229ddc9f2066977e5fa6a976e972df4d245f040c95151a64c69685cc80c3"
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
