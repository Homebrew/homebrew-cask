cask "firefox@nightly" do
  version "160.0a1,2026-10-08-21-02-14"

  language "ca" do
    sha256 "d09adc2f85c68bb1c5775d92a99305f15b07b4ea5b6a4f38301d49d589d821ea"
    "ca"
  end
  language "cs" do
    sha256 "e45d20bbd427abd083330f8799fcd29cdafeb4de675bd4e09b07280468eaf1db"
    "cs"
  end
  language "de" do
    sha256 "fbdbebc90d56b753edd3720de7a140f8e3d275fc59aba6136e09cc5d794d2da3"
    "de"
  end
  language "en-CA" do
    sha256 "20e2bdf8972c970af7227516252dd5fbeae874086fe820349db617fb6abcb5f0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "30f98ef1e00ca7351ccc88c51be63472489dfbe9642b7831536b834cb545aa69"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e5a63e25b53fe279d9abe8725f3badce35198144ba38d0889c116da418be79df"
    "en-US"
  end
  language "es" do
    sha256 "14ddb94b6bd5cc854b5f58f0dc12a45c0c888f4c5790e6a9618dadd93b3fca23"
    "es-ES"
  end
  language "fr" do
    sha256 "6792530d1a058dd565f83adef7730867ae62c602389eca2946df1a68eb00d4a7"
    "fr"
  end
  language "it" do
    sha256 "207480d6c41b3dc29f292cd331702d2e493ad0e3127521a622758970c52e56c0"
    "it"
  end
  language "ja" do
    sha256 "c8f190ca3c91bcc6c0b58c9c627addb640ea0c83fd1f23e11a85bac48723ebec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fb054bd0f49f6f8be64f6abbb02b6616a354e8f51fcfe65556bd3977cb93714a"
    "ko"
  end
  language "nl" do
    sha256 "71b9002bab7f15d0db806825e742fcf85b72010fb85cc51749cc602391e7b41e"
    "nl"
  end
  language "pt-BR" do
    sha256 "739de80979df3b99ab11a7ee0f02b4666cc30bc82bf25806f07b63d1b044cd56"
    "pt-BR"
  end
  language "ru" do
    sha256 "2412e19795f15df8e9181aa8995cf12851e6a2751eb767494487380dfd68ec5c"
    "ru"
  end
  language "uk" do
    sha256 "7f4706c6919942b5b35e2a5627e19fede1132a8aedaace9eae8f7acea9b80f1f"
    "uk"
  end
  language "zh-TW" do
    sha256 "a593bb73180b13e7f00c1cdab20b6cd79771562e4a0c6aef9dc061c3204907d8"
    "zh-TW"
  end
  language "zh" do
    sha256 "bd558e3f1d4b14e8847f07d2ede7c05450491cc0a383a6bed0fec68fc7ec0fb4"
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
