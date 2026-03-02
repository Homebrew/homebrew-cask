cask "firefox@nightly" do
  version "150.0a1,2026-03-02-09-56-06"

  language "ca" do
    sha256 "0fba823236714d02e255d70af4a81ffa6a69b98c52ba5070a900813d3ea9efb4"
    "ca"
  end
  language "cs" do
    sha256 "3bd9767a4d829f7ab990ccf0ae889841cad32b809eec02a654771ed5156b4111"
    "cs"
  end
  language "de" do
    sha256 "5bdc78c59f1a6923602b64c47492f7c751f673bbd9064a1fbdd610265c0a8cc6"
    "de"
  end
  language "en-CA" do
    sha256 "b46e2e847ea99e1eb1dad54cf6a4a2867760b2b9c928fcaf6987ca3e915b4db1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2cbf0e6f8fe675fa06bb9218cbd54059b81342218a6ea0e2c9649ad5af636f5e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "83afa94bcf7a5c00fb37f49b714695a17e77bfd03d986788ef4f0a09a7e2606d"
    "en-US"
  end
  language "es" do
    sha256 "8cd1b620ac510447026108e1f3ca6eb56f7114b1e8ce020eafe0f8b58c1c0846"
    "es-ES"
  end
  language "fr" do
    sha256 "d3b4781335bb93055b755b80c1b5f2860649583e8503bfe01811e67ffc5bda7b"
    "fr"
  end
  language "it" do
    sha256 "c957eeda502b075221efe2d231c85c7e77f81808ddbde161b6b23a9c415da4f2"
    "it"
  end
  language "ja" do
    sha256 "423d0f230642ddf8c5aa17c0a4cca46e45c626888a46cf42402dd544daad9c84"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "91df7684663b5c25aca9bef94a2ef69f02eebf271d909701aade33d1db66055d"
    "ko"
  end
  language "nl" do
    sha256 "7b9026c16a79f9495348b9a0bbe4c0ddbb2d60529a0fa47bb4028ab0e6727d16"
    "nl"
  end
  language "pt-BR" do
    sha256 "adf9bf09a62dac3576de825e2940696785d4e5b67826e93ebbc655b24556e13c"
    "pt-BR"
  end
  language "ru" do
    sha256 "1a8c5fc40e5d581ab45eaa8843000b6473428e80248785e6f015fe5e00db351d"
    "ru"
  end
  language "uk" do
    sha256 "d7832dbfd0ccd5f2bc90a346c33bf4921eaeb6b66293b1c49f34651db4ab3425"
    "uk"
  end
  language "zh-TW" do
    sha256 "815ce73c9aff65e07752f5f99e8a05dd909d9769c73ae7cbf15a772c2d54be88"
    "zh-TW"
  end
  language "zh" do
    sha256 "9b6d8492469da8211c36397cf2f321aa0f11903d1f471175a0d0432cc3a69026"
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
