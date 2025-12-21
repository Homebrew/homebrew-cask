cask "firefox@nightly" do
  version "148.0a1,2025-12-21-08-46-33"

  language "ca" do
    sha256 "b6bd742b7d1c3ad0142538523bbb69de881f727fd5db9d9ad5b48980d7497ed3"
    "ca"
  end
  language "cs" do
    sha256 "9be70195c4ef9d2732929f6fbc512b3225b8a65b3351843c2bb4b91d122dfab6"
    "cs"
  end
  language "de" do
    sha256 "a3b30e10c0130e776b4a6c2b405f466b6e50d4531f81cf97343d01e23f54b7e6"
    "de"
  end
  language "en-CA" do
    sha256 "555cfc8e0951c4ad744a92a34d51351481f660ab331b66d3d31b3931471fb98b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "58d59534894f30ce90bc6e7d5056a0ba19ddf57452f56478770741fff49da96d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d7e12463de9668b20a6e810a7f7b6521959c2c9ca025d432cb3a0be13e325da"
    "en-US"
  end
  language "es" do
    sha256 "25fdede3c0776cb727add970ff1d5945c8352f7357c552843a3b9cfc6a4ca7d1"
    "es-ES"
  end
  language "fr" do
    sha256 "37e7291de38133cd94dc19f9488897bc3558fce513c654cc9808b47af98b5440"
    "fr"
  end
  language "it" do
    sha256 "fa13bd44001f1cb76bc0f38451b58727d0463bfc3f0aa452f34ff2cfbeec629b"
    "it"
  end
  language "ja" do
    sha256 "728f07161a6a15774289eddc98a02a6f753163d3ec37a383f3911ffc5938b403"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7af641f029e3cd36acbe0e739bc85382e20722f0c7260f3edcdf8afeff882409"
    "ko"
  end
  language "nl" do
    sha256 "16b3e6ab2c7c6a9bd51a7004d4152a0ac559330a8150fb6e6aebbcd43c7c5afe"
    "nl"
  end
  language "pt-BR" do
    sha256 "fd6bd60ce07a216873b745f3d1c9e8a91f8ef1e016d7b748514395e51fc3db13"
    "pt-BR"
  end
  language "ru" do
    sha256 "7e665af788519fa7e70916f61430de6e09b6280ecf9bfc91d09903341b158abe"
    "ru"
  end
  language "uk" do
    sha256 "eb9e112fb5653228dd2e6e5a2685cc3b136a9ebfb89d3a2ec728124d0e06943f"
    "uk"
  end
  language "zh-TW" do
    sha256 "4086f33bd08adae03ae32719197a9a11a84e703cd42ad10462dc003e65c76771"
    "zh-TW"
  end
  language "zh" do
    sha256 "58a898147f6a52833d8ab52642b5b67588310acc089be6919a3c12ee8f4c0b6b"
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
