cask "firefox@nightly" do
  version "145.0a1,2025-10-04-09-37-58"

  language "ca" do
    sha256 "131e537ef9293acc93cd70a6736ce1715bf7e0e2d7cfe8a59eed0e11c0fc96d4"
    "ca"
  end
  language "cs" do
    sha256 "4871eaa4a5f25780f9923e2dfddc7c6d6247d1bc95ecedd79d50a9b5ff6d12f0"
    "cs"
  end
  language "de" do
    sha256 "f1a7cf7043aac2c39592eb76b5ae335febade3ca8e9ac6e807afa9275aa48559"
    "de"
  end
  language "en-CA" do
    sha256 "0f1a9f621f43f730cbeef24875c3cb34528a4160534ccc13e78b1d18342efc77"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ac81fcbb94334ca9f9c71dd5bdf7116feba63ee4fe04054e0a133806b6e7e015"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c5c4ea2866e086681ba1adfc4c25cd9c01a4fec50a23b37083bb2185947a8764"
    "en-US"
  end
  language "es" do
    sha256 "5fa29bfcc8d7851e651310ccbafe32d6e7378ea33cc5bda1672d41fcefadd473"
    "es-ES"
  end
  language "fr" do
    sha256 "6e4d22e36bfc54bcbe83e15fb36437c9eed92c51cf5ba3392f7d39fc2b679afb"
    "fr"
  end
  language "it" do
    sha256 "6cc2b0746ebed81df9c85eaf5b36d13c2b04d0fac6b2f2c2af14d1536335d739"
    "it"
  end
  language "ja" do
    sha256 "f482179e264d6818b07b6293f292c6b15ce49db8e7a65dd5e06fc10d2a1cfa33"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "86905f7dffb2153acabcefbd1a50b14fddb41893a6dcbd17747efe4a304158b2"
    "ko"
  end
  language "nl" do
    sha256 "d077d0931123f74e5b2bb44805891729d04aaa4463c66b239bb43f6aeb2a7a88"
    "nl"
  end
  language "pt-BR" do
    sha256 "3caea46a90b2cb74ec1af60f9a76df7342f3f07a2883db66506f13e63f56a567"
    "pt-BR"
  end
  language "ru" do
    sha256 "b37150d3966507250f74abc942b92140865995e0590030d08a6f3902ee17508f"
    "ru"
  end
  language "uk" do
    sha256 "38a9f1f20f51018b961fba2599c5dcc6f537a7d17cf29089ec13dc40e354423c"
    "uk"
  end
  language "zh-TW" do
    sha256 "3aa96c13b7c13c2b85005b589a94e009819f7554e70d7234f59352f3f11bda97"
    "zh-TW"
  end
  language "zh" do
    sha256 "79ea9d0975cd996a6676a7bf9348241e687effdcbd17845cdd6513be0c864da8"
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
