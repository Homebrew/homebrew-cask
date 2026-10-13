cask "firefox@nightly" do
  version "160.0a1,2026-10-12-18-57-52"

  language "ca" do
    sha256 "5e350c284d9f79f7e763dfc02233b938e17b6ad25ce87325cce0676ec2b56b69"
    "ca"
  end
  language "cs" do
    sha256 "c968caf233d45d62c2d8347af96ebedc4a03ffbaf31f353a74026986fd0c027a"
    "cs"
  end
  language "de" do
    sha256 "5bc20135ac0433de52c01f5ec64f4c25f45e65c939add07ccc199c255bec8fd1"
    "de"
  end
  language "en-CA" do
    sha256 "7ebe4c77578499e73944af8cfc4d6dbe209b9406f8e74b1a0374e42e0fd835e1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cf4d4fe7e33f31b6596a9e9ec3a5ed43b6b20aab85092ca0786087c5fc5a006e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e091756e5741fc73faeee9ba83e57a9cacef683ae817cd018cf05ecc05bf312c"
    "en-US"
  end
  language "es" do
    sha256 "940e670466fc50d672e8b8edd5576d08056bcba25a2b354dd5d949cc58f41dc9"
    "es-ES"
  end
  language "fr" do
    sha256 "0459857cceda553a845fb4b0a8651cd42432b7267b834204ec5688ab56d5e327"
    "fr"
  end
  language "it" do
    sha256 "2a15bea87d4c843b71946637bebd7011c42a52d72807d4f6438d4075b5778278"
    "it"
  end
  language "ja" do
    sha256 "7ced4a375bf67363757522aa9b3919a63527f3fcbf5ce64acd5b1cf9131cb2c5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a9a0fe1063d984041dce6b801693aedd149299c7768a81135f72ddffab302b17"
    "ko"
  end
  language "nl" do
    sha256 "9364fc4f1641cbef7de23953636040ea18b1146ced15d5a525a804d118dbafc5"
    "nl"
  end
  language "pt-BR" do
    sha256 "c80acdc82fe39e7a3b9cc28d1d179455dc397151b16001736a629ffb04b5fff2"
    "pt-BR"
  end
  language "ru" do
    sha256 "0203507727c5d9220c479b6ceeca6ff8d73d562939801f8bb4936cb9dee7e073"
    "ru"
  end
  language "uk" do
    sha256 "0e85ed54edbea536eff82c280c9b9aa5f483eba98ca612d11e04dbc292952ac5"
    "uk"
  end
  language "zh-TW" do
    sha256 "d5396babdf677d6b031678b2f4a92b42f263275e202c376bb529ab1ba02bc92f"
    "zh-TW"
  end
  language "zh" do
    sha256 "d038d0f7290e2bfd2493dceabe4bc99f614258dd84d1028d9736f0323f42f983"
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
