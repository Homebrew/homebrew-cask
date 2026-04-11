cask "firefox@nightly" do
  version "151.0a1,2026-04-11-09-19-26"

  language "ca" do
    sha256 "762598d5a005921ccc0ef4d6e3bf293763decdbe9489587bdf580f579cdba421"
    "ca"
  end
  language "cs" do
    sha256 "bf1cf91bb800cacf5876d629444bb98795973011c1c553fe2642f898103ac096"
    "cs"
  end
  language "de" do
    sha256 "fed6fe79a5e640e4da4064ab208de1acf6c5ff2d179663520b00e091b67758a9"
    "de"
  end
  language "en-CA" do
    sha256 "6bcfa5b2c9c02dd80b0e4b997d6b75d65c899b057beb8d4457b824d4cba5d20c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "253595a461dc7bc0808b9f61eb7e32e050639e18cc036cefb4be0ee14479f2d0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b9373aab798745f01c8750e9ccf56d1f213d7a77994ee30516e90d4f2231c6bc"
    "en-US"
  end
  language "es" do
    sha256 "c3fef6535f4ba99e5c5193380239bd5f962b27e3c715e2cc0e9e1875fb3efcf4"
    "es-ES"
  end
  language "fr" do
    sha256 "1e540c8503be2ca689f0af8072e11710246970479e0023007eaf27c2d0e4e19f"
    "fr"
  end
  language "it" do
    sha256 "c7e296596c833d3d9b85100c4a681fb71cd0dc4e853724285aa5221387ab4c20"
    "it"
  end
  language "ja" do
    sha256 "8e15f9a2fcdf304b99526a68d1367b9a0b8006fcfa26ec8e5556a46c380c8e01"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e346e272cc265249ba46733bb5a2e309483d573a0ea6ba576ba056affbbfd911"
    "ko"
  end
  language "nl" do
    sha256 "0ec184c49d0e8b795c465818ab7d222b33bc26d30660ce6820f7131aa34cd2c6"
    "nl"
  end
  language "pt-BR" do
    sha256 "42da2cecc52af732c04ffb2be92036e4e0777bbe85a3a8aff9d7d3c19c037565"
    "pt-BR"
  end
  language "ru" do
    sha256 "401596b2c3ec708bc20ed2452f6ecfc13af764e40e538cb529f9e1fd2a8fda17"
    "ru"
  end
  language "uk" do
    sha256 "c07f39948ebbfd94cf4ef3609db7c4e6be1d730f0d6fb17904d747114bb58d4d"
    "uk"
  end
  language "zh-TW" do
    sha256 "0d039a58a15c5d94345b2fea0c4128f5d8955e3689ec83f329d7bfe050ec9764"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2c24f5f2db89a98f2ce3571d2756f818efb2285d013c13110a2def43a4e2751"
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
