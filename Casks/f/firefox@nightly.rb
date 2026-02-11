cask "firefox@nightly" do
  version "149.0a1,2026-02-10-21-32-12"

  language "ca" do
    sha256 "045d99be627738cbbca461a64dfc46499ce9d880743cadd574d4bd5057059604"
    "ca"
  end
  language "cs" do
    sha256 "5f95fdb878fa35c0f30447e61eeccb18f2a0ab20718a2a3fab4eeb440a9d524e"
    "cs"
  end
  language "de" do
    sha256 "59e16e50130af6ed17732fe28541607836c1d3108dad8d42f617f2a0d9c0f466"
    "de"
  end
  language "en-CA" do
    sha256 "d29b9bf24a51416ebf38a296c34e75e9c7622a3c175709e6a6bee69f822c4236"
    "en-CA"
  end
  language "en-GB" do
    sha256 "75b133e616224db84b15444c359456764d7474df1b4c2ddd89ebaa764e832789"
    "en-GB"
  end
  language "en", default: true do
    sha256 "73695310a4495eafec1ed3156b725b9ba9f8c646d789b944917ef2cb2a1c992d"
    "en-US"
  end
  language "es" do
    sha256 "f72196e0cd634bebeb8151eb18589d34abb159160b8693ab06f05abd3ab2e364"
    "es-ES"
  end
  language "fr" do
    sha256 "f2b332e0831f2513063933207ad88859ac42f8c5e546c773460970816f87d3f1"
    "fr"
  end
  language "it" do
    sha256 "00336895522bf37aaefb8c1f6679c94dcd8a887344661f575e10a8de11b8d682"
    "it"
  end
  language "ja" do
    sha256 "d6be1976f653727ac7e0d6944bcf8e24bf08a0717f017901810a4cec225f802a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ceb622f54755ed67664cca49d19ac784f915c603f8d5ba9a96c182a57a5ee7ee"
    "ko"
  end
  language "nl" do
    sha256 "93c2eb47684231cd23680f07771fed63f4f9c852e897f57cf80bc82af98690fc"
    "nl"
  end
  language "pt-BR" do
    sha256 "efb62836d42d3a8d473a89ee4774f96cf826c6310173185f2cdf7d3b0d73abc0"
    "pt-BR"
  end
  language "ru" do
    sha256 "637c2462cbe5f874c7ec126d55b3240eded2d7f1209305a712bbf99819cad916"
    "ru"
  end
  language "uk" do
    sha256 "168b8402d7919e6cc502f1a9a7b69fbc3292d5f79abbcb253e154a17a0e6ce53"
    "uk"
  end
  language "zh-TW" do
    sha256 "39cb9fbfabfcaf8f0c0c82dce381bbddc965bc735ed6c58c94c638fc2db849fe"
    "zh-TW"
  end
  language "zh" do
    sha256 "76529cd038c5405f5b062bf9ae90ffa62f3af9041148eeb1d914a769bc1c9cb9"
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
