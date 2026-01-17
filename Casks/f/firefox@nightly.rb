cask "firefox@nightly" do
  version "149.0a1,2026-01-16-21-28-08"

  language "ca" do
    sha256 "73603f83fa76a83d943e4948fca7bab5dc5c61bd2cc694f625dcc9e9eb74947a"
    "ca"
  end
  language "cs" do
    sha256 "323b9cfd0e700b86462cf360d32eef9b2d920420413504be0eacfde8d80e7ef7"
    "cs"
  end
  language "de" do
    sha256 "53fcefb61137e856c6b41fa16ad89978b4bbb39dc8afd3580e13d9117f64e9ef"
    "de"
  end
  language "en-CA" do
    sha256 "bb15669f6c7268342307df600514b06f4344a11ae6afdf8c96444675954e26f7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f67ef4abef9998345cf55c4299d63c999bbb8f8bd0265d78bef853247f11ca61"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ae1b1c21c0b7a97c3bae8863f886a28480d76e014331fa5fe8d08b633719db04"
    "en-US"
  end
  language "es" do
    sha256 "17999f4cdcf7e3b1865779de5c6e6e27583405db5333c62c33c283c89f5cea58"
    "es-ES"
  end
  language "fr" do
    sha256 "09b0122bada3729817005eecdf4cddd1bece5e067bda3c6c9bb884a48114f9b4"
    "fr"
  end
  language "it" do
    sha256 "ce397e388f4a724ae6edb7234750790187ffd87ce2680177fb0c6e5f661cc496"
    "it"
  end
  language "ja" do
    sha256 "598244656780c77acd1c6144fd36226ce4e903d152d0b1008f786015ca7a6d90"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ac30be10c1275c6c35583e951c2885c53172fd3c064f0611e767b854b13f583a"
    "ko"
  end
  language "nl" do
    sha256 "a81f7cdc55effc21d90752fe251c8581d89a1ad395fcfabcf233b832481ac0e0"
    "nl"
  end
  language "pt-BR" do
    sha256 "1626eb6d32d244a97743d236b64a271c09f9f387c7dc62d52423f99c2d28883d"
    "pt-BR"
  end
  language "ru" do
    sha256 "f17838008ee02f2be522a18310fb71e9c66acaee8d3ed9c56822e15ccf9b3882"
    "ru"
  end
  language "uk" do
    sha256 "fc823893696e9c02d8888534fddae34864e02e1edee37af2ad5440e8947d2c92"
    "uk"
  end
  language "zh-TW" do
    sha256 "cedc3dd05e66e833257908ac4e99c91521e2b65dd13250dfe0d81ccfede51000"
    "zh-TW"
  end
  language "zh" do
    sha256 "0df2da8f02271e02208cba0599b6bc30c43d77784f527846dc94d1544a4758f9"
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
