cask "firefox@nightly" do
  version "154.0a1,2026-06-23-09-25-44"

  language "ca" do
    sha256 "139d5963973986c27265c3e078365b2ec37e8b535b5ceb4516658542c259dfc0"
    "ca"
  end
  language "cs" do
    sha256 "c32b20ea478b841a4f2c1cb1796dd42128e6ff71aa130153dc36faf8f43de61d"
    "cs"
  end
  language "de" do
    sha256 "d4adab1d5d94978d8540d2aee2b050d3ced7049e746428fba139ea99870ba21b"
    "de"
  end
  language "en-CA" do
    sha256 "9f97cc82bbabf9e3bd729cc6d70f9a62ee473f946d7a42caf6485ce1cae911d4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "108519e6f0e2ff635ff13a344843533762fe3e4aefba3cf14fef7abe34b1fa80"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f7ff58fa46e9219baeace18bbc134ded60e4b746afea537aca58f23a947fa523"
    "en-US"
  end
  language "es" do
    sha256 "bdfb7e4675402b853f35a7266b5d0979c35b8003e9d59e448151d6bfa1a7a2f7"
    "es-ES"
  end
  language "fr" do
    sha256 "f6df085e2ea83f6098addfc11a2c47062227daaf9654577f7a3c70dfcfddc095"
    "fr"
  end
  language "it" do
    sha256 "3d8c5854d07550bae164ffd9db70f00e12f9a5d383bd0a3eeb7f511bcb1193b6"
    "it"
  end
  language "ja" do
    sha256 "d0d52730280fbcac8e8abf826a5a94f07dee556afd2911aa8c96e76029b2263a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "46ca29025c45b9a8105123ae5d098e4d4128562ffc08aa38ebc7ed0e21efc4fc"
    "ko"
  end
  language "nl" do
    sha256 "7b9fc1d5f29868a3fbd5bae24ce0a41db5f4f19e2e3bd541051a2883b1dd6ef1"
    "nl"
  end
  language "pt-BR" do
    sha256 "4ce59294f4f17252dc3b5591397d9646802cc66fb38e38a08419c19d77da35ff"
    "pt-BR"
  end
  language "ru" do
    sha256 "c971ce90eb109b03a4303040697210b79f1aec9a38c6fc8500fffa6f02f7d2ba"
    "ru"
  end
  language "uk" do
    sha256 "0ddd9a7cbb2c2771d5349fb78e47c5dfea9e03c07e9e5a5a4c6e30b543137719"
    "uk"
  end
  language "zh-TW" do
    sha256 "f00d405d21d6750f9fce1bfbb41da3a9e124af9f8b3af7d5dca96b344ea9a6b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "be462a16343158f94ba44a23089458345dd1f133025691d6c0c8361913698d21"
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
