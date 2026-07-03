cask "firefox@nightly" do
  version "154.0a1,2026-07-02-21-20-26"

  language "ca" do
    sha256 "3916cca869b23ff1d55ca3b205575c7c23cb04cce2052e68adb77346edb2fbac"
    "ca"
  end
  language "cs" do
    sha256 "f39ba63400a2f6e550efa9c21c268e9da1651e6ae97ff8c4c4b0d4a8927ae73a"
    "cs"
  end
  language "de" do
    sha256 "6adac6907c4ac0400c49a0f9c1fcb90d9fc458919461058e802580c321d1d69b"
    "de"
  end
  language "en-CA" do
    sha256 "2bce2023f98dafb2fdc6e3d7361706916a50325bfa0880f8e637090d05141880"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e415355c6a9ffb3dbc7449289ddb4ca7bb64a715a3a82925b66af47728aee3bc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1efa273a2804373fa1b5af4094727c5916af0271a96922001fc96aea02faae92"
    "en-US"
  end
  language "es" do
    sha256 "039706d234924d01a471a282182010e94f15c53b369ecf1ea36c6270d2171c6a"
    "es-ES"
  end
  language "fr" do
    sha256 "ef1e69c44585a8c57fe9c0560089c63d4672dad3908c0d210645b3e488b96e36"
    "fr"
  end
  language "it" do
    sha256 "879be3c7ddae5bf6c9c9d6691e27b0942e9e61078972b066001583d0cd72a364"
    "it"
  end
  language "ja" do
    sha256 "3f16ee89a942ba2944ad64d1c52c0cd4ddd2794fa4d98f84ce5a7173b95693b7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1c7e7888addd230b2e72bc92d82414a2c9af8e962825633576fa57ef126bbe18"
    "ko"
  end
  language "nl" do
    sha256 "dd16bf7834c9ed5e09e6715e446cd66ff7969b6059c50bfa05e64cf74d9948c6"
    "nl"
  end
  language "pt-BR" do
    sha256 "1e6a80b8b2ef3a94b4402ecfe22bb82af934e6505f2c71fa673785d2762c3295"
    "pt-BR"
  end
  language "ru" do
    sha256 "fc834606ece661676c93832db668375590c50a3376c8b41a4f49682b53bf6f36"
    "ru"
  end
  language "uk" do
    sha256 "750dbf459b9fd841389e9b96b9bd4d39880cc2d0f1759e68a5af199a6f906ce8"
    "uk"
  end
  language "zh-TW" do
    sha256 "44e14db1949e754495ac8cd2135b76d29fb4eb20a4cdb6e8c2e474f1bf2681c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "2720f555ccf6677c8df0f0f07215db9349c838d4f0a87b21e83e968c44a4d394"
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
