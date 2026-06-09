cask "firefox@nightly" do
  version "153.0a1,2026-06-08-21-25-00"

  language "ca" do
    sha256 "0c2c02a0425f32e4d57c27d7749ee4b2e524d3067394cf857744e3b4b20cee9a"
    "ca"
  end
  language "cs" do
    sha256 "c7823828c5cc961e01458c792c2a179831bc26cfaebaa255eece4eda049b9e8e"
    "cs"
  end
  language "de" do
    sha256 "2b70e6c522c15418dffca34702cefa56af670ea7637f4b5067d10ebea13fa5fc"
    "de"
  end
  language "en-CA" do
    sha256 "f0b63be7945990bdf060c53d2c27fb05a0449e2da85044712d2f05b8307b8658"
    "en-CA"
  end
  language "en-GB" do
    sha256 "90825f59e8f8db491f91ffa895b686f2b44b0797afd5a1f023b4488a5f13c04b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0408b7600f7b1f3eac47f52eae5e919fbd4ced6af2f7062f586e914c9910e97a"
    "en-US"
  end
  language "es" do
    sha256 "5c71e7c55535d6ba32b4dd2789c568422893336b6af480314c07f36cb39ace01"
    "es-ES"
  end
  language "fr" do
    sha256 "6f38593f2e3ae3ef0f5b59b89ee5ad6f55e6ec50ad7547742f8fbf4ba88d49d3"
    "fr"
  end
  language "it" do
    sha256 "1ca5ba9fff64dda389341f28bc48486bbfd8fde25fcef17cb22beae4fd9b98a9"
    "it"
  end
  language "ja" do
    sha256 "3f9de41bae23d07a9cd34e4f71181f3a17e5f7a76cdb2bb7f380566e74875367"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a16de341fc0b83f0fc60a740d96bbf1a28516dc98b17dfcd1041441e7247e2f"
    "ko"
  end
  language "nl" do
    sha256 "93c17e3e0947aa3b40e6f3372edca3f9743b9b5bcf22cfe1917cb71a4c93f5e6"
    "nl"
  end
  language "pt-BR" do
    sha256 "76fb3d80bb5b29041051bc690f3c0adfb8765733e729f9e405f1121fb71a403a"
    "pt-BR"
  end
  language "ru" do
    sha256 "c2cb86424c088eab6d7660e19bf3228e5193f2de2f03eb2146758c65409ec766"
    "ru"
  end
  language "uk" do
    sha256 "c0871a100ae8ff1d4052360ecc3ca27d423a866172d205b52294bebc7d7f4e97"
    "uk"
  end
  language "zh-TW" do
    sha256 "8a254de112dd844218aeb2ae82a854dce257e49b03a4d98b518f15db2c96a4ef"
    "zh-TW"
  end
  language "zh" do
    sha256 "375774e64bdcd7ec24b8bf0d8800a5333964e105b14bd086ba2c688092379ae4"
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
