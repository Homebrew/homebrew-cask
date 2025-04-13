cask "firefox@nightly" do
  version "139.0a1,2025-04-13-09-50-36"

  language "ca" do
    sha256 "db12140c8e98b04891fb5ca19b065002022cd76c8141b37cdb7695ede29e8eb4"
    "ca"
  end
  language "cs" do
    sha256 "0a16c01a585633851b45b62b3441a78630afea26ba35cf368e5caf220c27105a"
    "cs"
  end
  language "de" do
    sha256 "744086f2e15b6988cae8f5d90f6b4b556d86f5974150fbdb49b05ddb27248976"
    "de"
  end
  language "en-CA" do
    sha256 "ad5d41ea15fd9bb0d48f94978032839bc566d187da5625c0444f413bc2af3e85"
    "en-CA"
  end
  language "en-GB" do
    sha256 "337dbf429ce5293e93a49215352a8c8238ba7debf20eeecf4cc5c42b31e8a499"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1c7c55a2f5fa2c66d01f27563f03bb4476aeb4969f4e6ac232eeed5297e74a91"
    "en-US"
  end
  language "es" do
    sha256 "124b4c9e5989d0d2caeae6327b541c8138e02ae8826b9af54323f6fcd86a5706"
    "es-ES"
  end
  language "fr" do
    sha256 "464e7d6b73d2698bd668237f0eaf232540931066106aaade22aec104ed795145"
    "fr"
  end
  language "it" do
    sha256 "599f3e6ec2ac53fa255ca8b6d94d81984354fa3c04a638ec4ebb6ece3f7a84cf"
    "it"
  end
  language "ja" do
    sha256 "93c236d30b1ad6d7226b89022ce23415402640c79dabf3b490fef5603b76dd00"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "32f16d77015853f07a01332a879196996e7fa9dc4fc0e4217dc4611da6157b4f"
    "ko"
  end
  language "nl" do
    sha256 "2c54ba3a5bbf59d5b9c7cda3da1cae11372a621976254c1805419a353f09e84d"
    "nl"
  end
  language "pt-BR" do
    sha256 "be7ef0fd410017766a21aaa2db03e7bfcc9b56819aefaa8e4fd64d94ab23c10e"
    "pt-BR"
  end
  language "ru" do
    sha256 "53975ed36657a20bde8937e774c9afc11ddd030316ba8d4176515e3621ed5883"
    "ru"
  end
  language "uk" do
    sha256 "a270ec30b6e51219526386dbd212e9d9097e2989ed16b1e8fbb21c069282340a"
    "uk"
  end
  language "zh-TW" do
    sha256 "7776ca10ea446705454651d5bf5e6519fdb15f1f78125952cc4f7989ef3dd9cc"
    "zh-TW"
  end
  language "zh" do
    sha256 "a8ae0bdc94a08d5b26dfd2c9896f950d3d8408d18d8116a117e232dc6495d7a3"
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
