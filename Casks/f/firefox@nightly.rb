cask "firefox@nightly" do
  version "139.0a1,2025-04-18-09-12-23"

  language "ca" do
    sha256 "28eb0caa815fa32d4550b6361075125434082d4a9449c06253d35645b60e8d0e"
    "ca"
  end
  language "cs" do
    sha256 "022e3760bc28a4ebdbd380ce58f4d4a3ba1280077314e5272b93060058917f1e"
    "cs"
  end
  language "de" do
    sha256 "55ab7870fb9ddf0618cf097e276b063e0df3ff0104b728266521f9545efa24c7"
    "de"
  end
  language "en-CA" do
    sha256 "f08787516dc8d450dd0236de110afdc010183cd849e29767ccd45d8c13be0e00"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fecd85c4308f6ca17d8791685fb4eb559c352cd6b8df6d79fda78000539f5cc6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0d813f2f2e5604857285e660a39ae887ef88aee90582b74fa1f161248bd54534"
    "en-US"
  end
  language "es" do
    sha256 "0aea15f104c66488df83131debdc8137214b7cd20f137d0d20aa884d11971eb3"
    "es-ES"
  end
  language "fr" do
    sha256 "a57bc59a296841a7a50f978af833fd8cd189a6293a0a12f91f9726f576f734e9"
    "fr"
  end
  language "it" do
    sha256 "70ddc8261281cb66f7e8b544f68afdd62ed171d6248ceecf896e4dac300ef2b2"
    "it"
  end
  language "ja" do
    sha256 "91b5f93195b2d53fdf1dda1cc8df165a217423297d7b1e71c88424471d93b467"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "194d84eb002d6ca2914c17b21eff3647f0075379277886cfbc52059cab6b3333"
    "ko"
  end
  language "nl" do
    sha256 "4b2c53c1829ac3c31866daf1b29eac1e53327aa35586f832288b446be45bfcc3"
    "nl"
  end
  language "pt-BR" do
    sha256 "87cfbc97b8f630a70b04ce803972dbbb3af2bb36510f37ef56c089e4c608aa65"
    "pt-BR"
  end
  language "ru" do
    sha256 "dd5dda1464cde121e2a59330f4daa9221071bbbc6827b383ab566538d4cc5630"
    "ru"
  end
  language "uk" do
    sha256 "58f738c7c0eed645a05d29e80a3095568ae07a8bdef43c05db2bf8e0dc554133"
    "uk"
  end
  language "zh-TW" do
    sha256 "13191f2c2d99dbf87db5d8e70f862d0398d0d018c17ac22acfbcdf6d981764af"
    "zh-TW"
  end
  language "zh" do
    sha256 "65bc1af4e5d4db4fab2f7539bd92d96d916412b8c574f1f497fae4fa820a2c21"
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
