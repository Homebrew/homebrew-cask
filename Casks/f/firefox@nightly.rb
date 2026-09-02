cask "firefox@nightly" do
  version "157.0a1,2026-09-02-08-43-07"

  language "ca" do
    sha256 "0631f00f8cf4d663a5a60461d9af186e915190d4ea9e9bb8803c3c4e3149e30f"
    "ca"
  end
  language "cs" do
    sha256 "f6da0a08c2dfc7662c533165da7a60bf1ea408cd302d0c6c9a354ed1ceacf496"
    "cs"
  end
  language "de" do
    sha256 "b01487aa65978fda1527b386d7d096339db9309b2f6c65d64d2553a577076d8f"
    "de"
  end
  language "en-CA" do
    sha256 "478c415ca5eee2bf1e9204f030191c5ec5bf2be39f825161dc2014d7378c4718"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ab5565ab961df550b4100e249c76cc78fc25788055859e6801db83214cdef422"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bac89b113aebfd6d2c648e429cfd833ddbec37c6742e99a19bb0cb069d1da7e8"
    "en-US"
  end
  language "es" do
    sha256 "8c518ac7ed21480e65f8f7757aad5f80272dd1ea7ffb1825ca334437b845708c"
    "es-ES"
  end
  language "fr" do
    sha256 "fef865e7a1fac4455e55800f95c2ee7504f362ceb7d7617a4fed2018e3cd7d4d"
    "fr"
  end
  language "it" do
    sha256 "50db631e448ea7effeccf45d209ec3d0b84cc690f8222e36be3301a7cf049779"
    "it"
  end
  language "ja" do
    sha256 "f38b72f2d50a4807987ba04cf9158e71e0853a0ea117c96749779fb26a503348"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "283941b5237a24014fa4b1b160d8c1313aa9505c2fa4ae9474c4ea72d6b73d1a"
    "ko"
  end
  language "nl" do
    sha256 "2db2886a14407990c897a2233d36bddaa24256bfadc255bca61d097ceb0139f7"
    "nl"
  end
  language "pt-BR" do
    sha256 "676c3b1f569f1b1966bf29aeb538ff5fbe644e2a96e35896c167088fd0b9e7ba"
    "pt-BR"
  end
  language "ru" do
    sha256 "8f1170450040103becd404cb87b92e0038f9508a75a27730c817ed3860186ebc"
    "ru"
  end
  language "uk" do
    sha256 "0e220764db5172feba034aea36b3444cfb5ee938a2627beb629a723bc815f192"
    "uk"
  end
  language "zh-TW" do
    sha256 "7a0b5fb7785e943fd87978533f5234a4e59c16ffb481be3146a273a7f74da5ca"
    "zh-TW"
  end
  language "zh" do
    sha256 "ea383e3e7fa1e24b00322ee58653bf563138900d15d43880195ef81c760cec73"
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
