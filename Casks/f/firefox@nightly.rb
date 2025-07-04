cask "firefox@nightly" do
  version "142.0a1,2025-07-03-20-38-03"

  language "ca" do
    sha256 "7fa63478fb5f945b0c1cd962b93185e77ac513b27723975c0f8ee24ecf7366e8"
    "ca"
  end
  language "cs" do
    sha256 "e149d4a30a197a9ad7f516ea3502370153e493c2b71c11f8c1fd77bb6e265565"
    "cs"
  end
  language "de" do
    sha256 "52814bbf3b55f756607dbc4d8b86fc97c3113598dbd3ca745fe1960e7c7b2a26"
    "de"
  end
  language "en-CA" do
    sha256 "c0b23d550c187f7b58267766a15c49ce201f0e6eb02bebd7a17224e1777270d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "20d060b4170d64f254959413b1993effe144ca39cf8a6dfc74884d589fc8289a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e474ba0bc77a199dd42d8e1d4c55068f97066d6d80b65c38a1f50c236b80526"
    "en-US"
  end
  language "es" do
    sha256 "528f31ea3b99923fc971900c4aaeed00274e61358fa60359191d9524b19b96ff"
    "es-ES"
  end
  language "fr" do
    sha256 "ba4955451ad526d49b1798c9e161187bc1a843723d9686ab400b02f5a46ae9ea"
    "fr"
  end
  language "it" do
    sha256 "cb1b2d57b3956f7e14248ff16540952212d5922444944bcd23f27065e8268d68"
    "it"
  end
  language "ja" do
    sha256 "f4f6cc3d1fed2a80a29dbd1313d06b035035a86776a70faf47e7e44c168b336e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6cd9a0bf00b92cad3097ba5dfc2e099010a2d2b6611fd101b76c36ea368068db"
    "ko"
  end
  language "nl" do
    sha256 "fdc133d53a1640b6f126c055f483c477158ec0ceb7d2de9884226cf5d388a027"
    "nl"
  end
  language "pt-BR" do
    sha256 "f6184da417f4a780b7a5093870bf2a4d21d0a51f93e080544d1ec3fbd781fc2e"
    "pt-BR"
  end
  language "ru" do
    sha256 "9c0322cd87a239d48480647c1caaf04aad51e55525510fa25795ab15056af852"
    "ru"
  end
  language "uk" do
    sha256 "79e439908d6285574c0f3252852e9e27d18fcd062bc63214dc4a5a6e660aa7c6"
    "uk"
  end
  language "zh-TW" do
    sha256 "de587c944ba9507ae1bf97eec94672b7bd6d6f46089aa2d153f8db2fc7ace5c1"
    "zh-TW"
  end
  language "zh" do
    sha256 "8790b766c517b7d113c81f789fc424ed712cb753a9eaed281cfe74d2c5e69df1"
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
