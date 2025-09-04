cask "firefox@nightly" do
  version "144.0a1,2025-09-04-09-21-15"

  language "ca" do
    sha256 "004cf431d7f8897cf060c07d8a6861dd59d09744b18119fc7aad67503013b233"
    "ca"
  end
  language "cs" do
    sha256 "fcab22c73d8c571ca71cad383960dd82b2009326c7fd3351d7b11cbfb7e28c95"
    "cs"
  end
  language "de" do
    sha256 "faba50ba145c3a7423ea5f503160f101942b8720944e647f667aa6b4dc3f86e3"
    "de"
  end
  language "en-CA" do
    sha256 "3285c4187a2d4ff2839aaeeef5a647721afa9ef1bc0ac1d412782c6a976b6aa2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5ccec2542a7d1d2035baf9e03e96ee833fa48decdb624b17cad318cc8180c63a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8cef776cc56eca7f87c10b0a76eb05c95ab0e72ea31fcd3fef6ec7193df38aa3"
    "en-US"
  end
  language "es" do
    sha256 "6bd59bd61d0d0c08b834250d0c2695a9809ab7ed8771227aa401459767f8278b"
    "es-ES"
  end
  language "fr" do
    sha256 "d02a778979f7203b673638464de5f8ffdad5c8a647fc9f3174dbf51aef84169e"
    "fr"
  end
  language "it" do
    sha256 "678fbd6f52b85c0fed71a9e48ee229da008029fb3f2e8d57d49ce86d484ad591"
    "it"
  end
  language "ja" do
    sha256 "154e2d83c4cc45aa257bfa4b1bb2e7c81614693bfc2c7561c5fcab7ef0e740da"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7b48889f0492d93f549636c81beb52d0e78efc2a3266fa34b760f5c5fbd4f84d"
    "ko"
  end
  language "nl" do
    sha256 "686f7c675e7640d7360860b000ac9a06fd386f7adce133352b7e8db4dd9a6140"
    "nl"
  end
  language "pt-BR" do
    sha256 "a845a967ef73a6c2b7221f4cd7fbf6371c1b66df1efd5326d484843ab89a1ac2"
    "pt-BR"
  end
  language "ru" do
    sha256 "f4ed94ece8e4e2d386a358bb99ea722def9eb209f3a4fda2a34b366613b589c3"
    "ru"
  end
  language "uk" do
    sha256 "2326815998c3710096f141aa0866dc6f5d84902cee724a665a5006f99bf6e652"
    "uk"
  end
  language "zh-TW" do
    sha256 "f3de788dc446d521d946e36ad0da78cc584ed500bff1f72118542136cda06dc2"
    "zh-TW"
  end
  language "zh" do
    sha256 "c70ab05983819178d3bb2807da2854bf8988940e3cf990afdee4d1f27c7fce1a"
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
