cask "firefox@nightly" do
  version "146.0a1,2025-10-26-20-42-57"

  language "ca" do
    sha256 "f30a610f7df16c961f0ddac8b5ebf07c72fcebc90baca5cf1629abea7b09cf8a"
    "ca"
  end
  language "cs" do
    sha256 "586d9e134d363432cb4b302655398485ef7edca596603250b07ed1862e4e918c"
    "cs"
  end
  language "de" do
    sha256 "b41f895237e685b09ad4ad211f3635efdba82b4f411e2c9e68655629d8cdf716"
    "de"
  end
  language "en-CA" do
    sha256 "9766b3ebc02abacfe8699052dd673c6f5386870e588355260256e9f718f9d6fa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4eba326ddd6c5c1b9e55e0fdbea29943cb7656bfd66561bd135c9d23f547bcea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d0c3a71076e4160072b8bfb1ebed40600047e250b573f6fe86cdb36fbf3983e5"
    "en-US"
  end
  language "es" do
    sha256 "5c43efec7702e2b0184a8ab251e4fdfd4d5e37f49315d8718d3067f37ed62f81"
    "es-ES"
  end
  language "fr" do
    sha256 "966d341e657b912c43611741ae65f84c743a079ab10456f9f2f0b8449f7dd892"
    "fr"
  end
  language "it" do
    sha256 "d7c48a379c5342f5e47d067cc9026131f373277ea29677e84ab17a319f2c7f3e"
    "it"
  end
  language "ja" do
    sha256 "045f8818384b56b886f708986be7634103acf3c3d986e2e744d8b2cda9949fef"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "09666a3c34542bf6e4fa1af8aaef3bff9ee1fa61ced1fb905a0adca19f1d1a8a"
    "ko"
  end
  language "nl" do
    sha256 "294690c71e12232439425a7874dd22ca7853df107ea070c676b442e03ddc96ac"
    "nl"
  end
  language "pt-BR" do
    sha256 "25db332e215e5d608ab141257eabc5c0fddb3953d05fe5af0007a44100972359"
    "pt-BR"
  end
  language "ru" do
    sha256 "d9f447b2cae3b597efca25c8b462e9589c8a51feb6ad1cbdd736630d0fda2598"
    "ru"
  end
  language "uk" do
    sha256 "cdbbddcf3250a4609d209a599d12ed3a95e9cf35b8837fe1044617e6dcb02358"
    "uk"
  end
  language "zh-TW" do
    sha256 "a13b58d268368d3392821cae5c029c4a02a7be0b6c34551bd789a316e69d6138"
    "zh-TW"
  end
  language "zh" do
    sha256 "47437c860ed2bcfa656f2f99fb847afda5ba848368b6edd8cf6c5b47d546f612"
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
