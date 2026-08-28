cask "firefox@nightly" do
  version "157.0a1,2026-08-27-18-25-58"

  language "ca" do
    sha256 "cf4ab5dcfa3e8da76c938b6ab855c9e92c18fffba5b90e9362637743217120fb"
    "ca"
  end
  language "cs" do
    sha256 "f814cdd8904c1aeb897831d6ca59ce0c45f1d5474905b83d4461c8989d2a8747"
    "cs"
  end
  language "de" do
    sha256 "b3c1fd1b9798493b6570e68c2f9a44eb2563dfa18d673d7f9005847b3d5f4688"
    "de"
  end
  language "en-CA" do
    sha256 "2caf110cc40b77bbca3a7263d719b4ee88b37bc1fca93a83b03df94cc6aedb9c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5a381073842ee8aaa9b23fe99458c76fe5429be60934de61a5d56c310923a999"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b16b53b38442e3992c3dfc697b87748b5e19b17e4e7472d84f880bccd1b938ec"
    "en-US"
  end
  language "es" do
    sha256 "a8a72d1c31878e2214ea724e653ed91f440e875185d5fa819e3a7dc99f5c0bda"
    "es-ES"
  end
  language "fr" do
    sha256 "d5ddd33da780bc2029f5042839b89c2ae745746fd52bb7cf4f56e890edbb8c84"
    "fr"
  end
  language "it" do
    sha256 "7b9a7f6ed1137e78eaf18b82f3c130dbd2f9060a03e65d667a909236bfae2f6e"
    "it"
  end
  language "ja" do
    sha256 "b25cbb0c3015a657c7d1f2bb4ed7e6a55d520f9b6f71ac1752eb2b454a3fa37d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "adee0bd32eae2f2a60322346555796ab919aabad9d742c7bb94201a4b0f425ae"
    "ko"
  end
  language "nl" do
    sha256 "b5f57b08d0d2a4961db67beff45d9d3689a979bf2016bcb1fc085e8266d55a3d"
    "nl"
  end
  language "pt-BR" do
    sha256 "956a3a2c9868f725b734265e25f14c192e6d2ee6033c3f2c41af3b07f018aacf"
    "pt-BR"
  end
  language "ru" do
    sha256 "a9316cc39d1b27f1cbeaf16005a5340cb39ee9274a8450f5860e4c27e38415cd"
    "ru"
  end
  language "uk" do
    sha256 "9c9843f720f88e1aa95e52fede10ace6ba5c8597e72380379130ea52e1101a33"
    "uk"
  end
  language "zh-TW" do
    sha256 "761197e48d2415316b13ebe453f427d03357bfffbc41c5013b5805cd7e3358ae"
    "zh-TW"
  end
  language "zh" do
    sha256 "66ea8d88481138a54a593cc52b26c863ef2a056ef2b665c9f4cac47c8990347e"
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
