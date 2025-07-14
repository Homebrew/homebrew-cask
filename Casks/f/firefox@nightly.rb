cask "firefox@nightly" do
  version "142.0a1,2025-07-13-21-41-00"

  language "ca" do
    sha256 "cde33d6fca3cb8706286193fb7eee7564a2a3f4b9567da09703384fe8fb43112"
    "ca"
  end
  language "cs" do
    sha256 "249cd4613703059ac809b8f5e27698916e320cd13b508f6a781791b3a0746e07"
    "cs"
  end
  language "de" do
    sha256 "c4e585c32fe057e4e88f01ba98407ece8609fdf887fb50f04430d86dd25b7aee"
    "de"
  end
  language "en-CA" do
    sha256 "88e7ed663f6d5dbdf50da603c24236feeffa1bbbffae9bff5e2f4de430d4b97f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "40a49c1de5f106de21811899c4bdbef5813fc89c0ffbf1c16c75b5ec65efbfbe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd31173a69236a46fe69cb3485b2df035878511a3c62035d117672f7fe21ada5"
    "en-US"
  end
  language "es" do
    sha256 "5ddde43302921daa06b8edaa9c1b5d4fb58b92cb95d5fe0458768659141449f8"
    "es-ES"
  end
  language "fr" do
    sha256 "0b6f5c1fee0098ad8fc68bf2355af80f3833a8d6df235d5a3abc563c40aa419c"
    "fr"
  end
  language "it" do
    sha256 "958c980b168a72645822095c5fe27caef1ed5d13239b0128de0cb43d506d6db7"
    "it"
  end
  language "ja" do
    sha256 "a8c10d4a35fbc9c69bba40ef60b8fa090c3c560f596599426b2c8c875617acdd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4091ccabfc0fae5e203c916c448ff973d712d7b5fc585bbf0ab48a01f7def9a4"
    "ko"
  end
  language "nl" do
    sha256 "83d061e4e89a86f4f8308b952396035831b0e0b98e37712efd408133bd6e658c"
    "nl"
  end
  language "pt-BR" do
    sha256 "617038f338a3c107f1ef2ae4c19027ad36b02cd86777ace43ebd79912598471e"
    "pt-BR"
  end
  language "ru" do
    sha256 "6efae13fdd99f42dee10788564fe9db5f1b52a3ceae8e152d561a28f185e056c"
    "ru"
  end
  language "uk" do
    sha256 "4f11d8ea965cc137569aa104bdc470beb5ff94dfaff59b6c280fade9f191b613"
    "uk"
  end
  language "zh-TW" do
    sha256 "ddd8aa70b76be0a51a5cd736fa8d49095f01efb8a501636501297c0d72b4e939"
    "zh-TW"
  end
  language "zh" do
    sha256 "552e17f4b2aec65f2ccaecd2c2dd9852c79b4bbb8ff03c8b5e5f97f74fbae0fe"
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
