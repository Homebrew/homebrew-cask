cask "firefox@nightly" do
  version "145.0a1,2025-09-21-09-21-52"

  language "ca" do
    sha256 "b0aa665149de5d9e78da830b776069c6ae6b8fa5c2d271a7f158e5630aa89cf6"
    "ca"
  end
  language "cs" do
    sha256 "13aeacb3d2ab3683c7905455cdc1cd8a46664e81871b9e6691bb6a839e40b623"
    "cs"
  end
  language "de" do
    sha256 "ec840285fa7c3bc2670e9ba4859263d7174e67ce6f964a4997124e9086fb2885"
    "de"
  end
  language "en-CA" do
    sha256 "a834e74442cc43ee12b24410cbc839fbac4510898fa2983fbc9cf4c1eab722a8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "07e1200ff19dbba5e0f9d3291d6d3f160f19091a08e6fd2c79fbb8a2ea814cbb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a476a4e4a66801d84712158587dc275f5e4274ccccaddf41d1133a1f777c47f2"
    "en-US"
  end
  language "es" do
    sha256 "4b8fa4b1a13e4516a8ea8a8d6606e59d47b8b9830e64cc2afdd34ad2b1e9fc46"
    "es-ES"
  end
  language "fr" do
    sha256 "679e8714f597ed6df6dc432f25736e3bd1e54e73eda7ce46bd5944a010f30639"
    "fr"
  end
  language "it" do
    sha256 "2c6205f1fffa7eb5a466fdf8b9b5ccaae092a949865620c021c44d62c0789ea0"
    "it"
  end
  language "ja" do
    sha256 "e165761248af88d39026be6cb1006c03fae8e96b6b6bad682568aa487d370358"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d9da2bdfd36ea1adb463bb0fa8668e59019d305d5b8a61cc84252f9065f1fe29"
    "ko"
  end
  language "nl" do
    sha256 "ac8851cacf12be08319bc1a96941b49ff1777b5cf020a6c7e949fc215ee9759a"
    "nl"
  end
  language "pt-BR" do
    sha256 "232c0ca445f55199e73a7732039e5c764d59695251e3d3b44e2d1ef8613e0367"
    "pt-BR"
  end
  language "ru" do
    sha256 "05687c587142b37cfee017b6cb974d354d1886c8cca2602bff91f40b5690aecb"
    "ru"
  end
  language "uk" do
    sha256 "1d49f6b72f3911c3454e223757dfd77037d959199a6b344e5bdf9417e7c4cd37"
    "uk"
  end
  language "zh-TW" do
    sha256 "b68e6f17ba0e4e271cc195c62a4c9749cdf4ef1ffa69711aa07a35994ee4b4a5"
    "zh-TW"
  end
  language "zh" do
    sha256 "37264b21ffeceb1825ff68b533bee95f3f46a916ce155cdc3c28d1de11af9c0a"
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
