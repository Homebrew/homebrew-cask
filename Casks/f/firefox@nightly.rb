cask "firefox@nightly" do
  version "148.0a1,2025-12-19-09-07-05"

  language "ca" do
    sha256 "e7f5f55056c0ae09aad86d5950a10206e50b6213b2ccec6c4bdf13dc8b5ae187"
    "ca"
  end
  language "cs" do
    sha256 "bb9a4967b82584261f602ba79691f767413d85ee2f4b793467054acc254d2358"
    "cs"
  end
  language "de" do
    sha256 "976f6890be8c03dbf0ed9b7900f4c5538815f4c48fff895092b34ec35ce06796"
    "de"
  end
  language "en-CA" do
    sha256 "0e1f26660841d09df78269d5ee19fc97e754c90dd428288262ffc260fbc88bd5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d7e78685e42a0f39dad7553a1310c8b628b2fcc4e5b48927199415f08eb068d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4868b3db3843f13769de3443ef699aab16702bf7cd40fe5aeb6e8ccb5c1763d4"
    "en-US"
  end
  language "es" do
    sha256 "3849db0f665b0fb7dffe6bfa851bbbead5e42dbc5877b195e55faa52da50dcb6"
    "es-ES"
  end
  language "fr" do
    sha256 "5b2c7653dd6ded6db441f0a5e2401352f3dbf0da342c83568c01b635c46e6926"
    "fr"
  end
  language "it" do
    sha256 "df0bf71148ed0850cea06d60a8285088dcd10e693979333e6b6e809b9d099157"
    "it"
  end
  language "ja" do
    sha256 "44e6f5750331c140e30294c23b86c2ad97b67a2f4ff562d0ae23fdc553d0e5b5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "28455f7d4944fddf7db4c23ae2dd5e2fc4d77e95cd0ee6546736185e05f82373"
    "ko"
  end
  language "nl" do
    sha256 "b08c44e84c58dc3aecf338d916a439a88b3706f235ed14feaa89cf7e3025994e"
    "nl"
  end
  language "pt-BR" do
    sha256 "45d4ed225020b84def665a43a30c43ab17b7b62be8707229402b05259d10448e"
    "pt-BR"
  end
  language "ru" do
    sha256 "8e50d86e99f507db3b4bbf48164f58face9f58b9680a6a61bf20de7865bee9d4"
    "ru"
  end
  language "uk" do
    sha256 "ca44b4005dd42a77f2cb5ae044ec60c5b64095929e34741a0d7b06919c8fa26e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4774a571cb03e3a1c53abe3e6be401cd1524628df3f2613348ea3ad44a7d277e"
    "zh-TW"
  end
  language "zh" do
    sha256 "38905870d589427d73005ca9cbd24e8c64f34e8880772059e58ec8a3a2dbafc4"
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
