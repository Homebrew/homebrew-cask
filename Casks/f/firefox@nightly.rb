cask "firefox@nightly" do
  version "142.0a1,2025-06-28-09-48-14"

  language "ca" do
    sha256 "ffee58201f041024543df225165b330751dcba2bf4bcc95b4efeca99c673bf15"
    "ca"
  end
  language "cs" do
    sha256 "b9a9473106fcc53615b06931a940637b3b01a96527be08bfd63a1be404d2d570"
    "cs"
  end
  language "de" do
    sha256 "62d13c13b92339fccacc3fa3c3959bcf3be170498874d40a9f7f129180087ee0"
    "de"
  end
  language "en-CA" do
    sha256 "8184dcf54c451b6baa4e8c1fd2791b465acf975ce9bffa27882362cc49d21307"
    "en-CA"
  end
  language "en-GB" do
    sha256 "785b1e4b3fd3b0f62b083ddcad23e4ff9eaac02ac845df48f6c35549c2913282"
    "en-GB"
  end
  language "en", default: true do
    sha256 "263ee3c32fbe011f1158418818dcf3089e3605ce6da908cad26e697cc32968a7"
    "en-US"
  end
  language "es" do
    sha256 "a3488957c73b3eb86df769d9bec56da8da6a151d760532c184894fb6094221ca"
    "es-ES"
  end
  language "fr" do
    sha256 "cb8e7a39b208703bbb6c2f67498f8a8bcfe779888d03670e2ae98818ff33fb03"
    "fr"
  end
  language "it" do
    sha256 "e5a2c78c99677039081fc9cc4fe9406d0b9eeb521dc44f45fc9de5d3036ea040"
    "it"
  end
  language "ja" do
    sha256 "a3e84c73194a847009cda504ae4b40cd1a73e4504ccd2f6fb5e157dde1c0f05d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "76d99757f9e3d2c85f6effe8467dd190f9508f11bb1b75c325ffcbe281c48e74"
    "ko"
  end
  language "nl" do
    sha256 "1d5c678ab46099f1b3ba2464fd4636785656ce779655c56312b4109eb52ef0af"
    "nl"
  end
  language "pt-BR" do
    sha256 "f1a5895a9e5215c1b0feeafb504c3aa7ccbf4a6236d8cc6b34df31ee1e232a27"
    "pt-BR"
  end
  language "ru" do
    sha256 "207722430c1176cbd903f9668421272791f8a0152821080d66455522c8bc04c0"
    "ru"
  end
  language "uk" do
    sha256 "095fb5bd21b91f96204220ad4fca90df22eb900896c2ef886246f079ecee5902"
    "uk"
  end
  language "zh-TW" do
    sha256 "23cbd413a01cf1e3043955f827b1b91d6343dfde301d46d6bc2ff33cc52d0be4"
    "zh-TW"
  end
  language "zh" do
    sha256 "8abe3f1d743c1e8959576e0501e0c3c1e39492771f8c9ed5d9200304372bc558"
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
