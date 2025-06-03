cask "firefox@nightly" do
  version "141.0a1,2025-06-03-09-30-15"

  language "ca" do
    sha256 "5d8e6890074c7987e144ad83c67699d1228ccb4c2662660c6e421a831a938c41"
    "ca"
  end
  language "cs" do
    sha256 "8156e7e63469f345396e49fc32f6cdfd6fd8b70f84f214b4af2d0c7da39d88d3"
    "cs"
  end
  language "de" do
    sha256 "441e93294b2a67d27595623628d649c2eed521ccab0c1f9a80e27fa1356edea4"
    "de"
  end
  language "en-CA" do
    sha256 "0c0484b964b58b770e390f0677623e6e85a1e4084488d7dceb8ada29e2b75d77"
    "en-CA"
  end
  language "en-GB" do
    sha256 "39fa5cf13eb0187c090450dd71d69486c9aded597aeb9478a06fc96fd6e09710"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6f12ebb1747eeef54ac24e6764dd820b5ca77eae436d3553a054500de3dacda1"
    "en-US"
  end
  language "es" do
    sha256 "792e9d655e4f2ec68f2182685914ba20e25a5931135e512deaadd8e0acfdae62"
    "es-ES"
  end
  language "fr" do
    sha256 "410698241bc689aca8abf1498f1473a6bed9de328dd4d53222440dd81e15ab24"
    "fr"
  end
  language "it" do
    sha256 "21670e49d1b6630747398b7f7a9a40cc7c25cd921a390741632136fb9e0c2fe4"
    "it"
  end
  language "ja" do
    sha256 "98f695551ce511f8e093c7c031e89467a1e66408421cbc5fd8c1fac37f7629db"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "875872ba85f8fefad8e2c15f47f91c72caa2802646aa1c131b513094ea1dbaf4"
    "ko"
  end
  language "nl" do
    sha256 "673ebddcf2b61bf7a0ac2d33814686c2cfb7a1d10dad06d9770bf084d4f47305"
    "nl"
  end
  language "pt-BR" do
    sha256 "ed768711b89f48f13e9deb9b0d49d670230b35b3f85866a66248cf6602744b5e"
    "pt-BR"
  end
  language "ru" do
    sha256 "dd34843fd795c17aa0790faedebfb700809a9f5abd82bea849c64f1372c05092"
    "ru"
  end
  language "uk" do
    sha256 "b206678fc86f13f8ce267fa0e6e920dd2aabcf6ca65852e050964ba3d38612f9"
    "uk"
  end
  language "zh-TW" do
    sha256 "5dc1e11bfe58a528ea14b2f65e6b58ea57e752b2a46f5fb6cd05e6a3d17f8924"
    "zh-TW"
  end
  language "zh" do
    sha256 "1d0b7fcc69fa792b93e62af562655206ee9777101a918474ca95a8e5e55d1de5"
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
  depends_on macos: ">= :catalina"

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
