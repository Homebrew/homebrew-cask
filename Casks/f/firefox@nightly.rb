cask "firefox@nightly" do
  version "159.0a1,2026-10-05-08-01-54"

  language "ca" do
    sha256 "cbb61a6183c97e706aff6af839053595c7e0d5be935cdd5e51b270d57535d0b0"
    "ca"
  end
  language "cs" do
    sha256 "b53ba1ce12d3ac48ace06217d570bcda51eaf7934f064bb4707781fa08a2a516"
    "cs"
  end
  language "de" do
    sha256 "55e275bc76393f4c56b249ce3c26d11bc8664f8088b80a62933a040ade60ce86"
    "de"
  end
  language "en-CA" do
    sha256 "91aec1dceb02a4b6d16185750a055c124a6764e497cbb018793fe2c2233eaa0b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "66d44ec318cfeb793392a2dceeeb07ba7fb36979e16c3fc4260fee5505b167ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5218c799e2cee1824c25475a2428f24b4512be8ec243cf5a0465d04509c8ff39"
    "en-US"
  end
  language "es" do
    sha256 "12a2b0dc9e3323cf42ce39beed6ef2168298e00a29792b75eb0750ea11b97ae1"
    "es-ES"
  end
  language "fr" do
    sha256 "0848adb94fc1e1f751e653b954638d7e8e13ec548e382495d2ebc6292950e1c6"
    "fr"
  end
  language "it" do
    sha256 "a4f6dab762705f704cd4d164c8cd288f3f8d2679da166c312eceed5844206eb8"
    "it"
  end
  language "ja" do
    sha256 "03d97e3535b4941c4a6c6254a06e8aee64e42376896a9f340778ee058573e780"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dc46bfbd2576a219055f78540192d3d7688d232562b41b6bb1a38789df954528"
    "ko"
  end
  language "nl" do
    sha256 "5971d82c915c3e417f16762d5a87a650139da250be8ae3c24e6c73d7c43145a2"
    "nl"
  end
  language "pt-BR" do
    sha256 "31c4361aefb3a6cbc71dd24461b23f66ce76c133794fb860732ab6327a828834"
    "pt-BR"
  end
  language "ru" do
    sha256 "b40dc23ed5bb54680a7f9af2fbd43b0bc5b488453a6cbb638ea289d8228e8d84"
    "ru"
  end
  language "uk" do
    sha256 "3ba1025c9e43506866087ed3e0474ede69de7cb8a57b62694aff1bf08a1ae90e"
    "uk"
  end
  language "zh-TW" do
    sha256 "cd604f585fd8991b5522ee2da0113e7e52b230db9d7492c07b020abeda45524c"
    "zh-TW"
  end
  language "zh" do
    sha256 "a22131d064e96effea1efc0f121d6479991b663f59ea5ee48464c0f410654749"
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
