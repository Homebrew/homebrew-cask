cask "firefox@nightly" do
  version "147.0a1,2025-12-07-09-07-06"

  language "ca" do
    sha256 "5cb26c537dd60ab20330596212f4e831a4facbbe9bc16852497d427c0738833a"
    "ca"
  end
  language "cs" do
    sha256 "4c30110b3f831d7bc59ee9c2db6c871ae0db9954ffd38d10f9c4b92a494e3b6c"
    "cs"
  end
  language "de" do
    sha256 "1c1ad62c20209bc207ced81c1c3a36145145859cd387078251b47efe8642d28e"
    "de"
  end
  language "en-CA" do
    sha256 "50d94ed03e7cc1271f7e1e18d9d9b07cabecbd65eb0604ba35988491394085fc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2d307618ffd27f4eae02ae6341b40b906fa29385000809ba56339071363af15a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7055dead0e42a552d4906e187ec06362e52613f7dc9275bf923cb24d8db9018d"
    "en-US"
  end
  language "es" do
    sha256 "a09091d5608cbcb1fdd3c2d74639792aa83d07bc38ce81fbcf995a2d2472afa1"
    "es-ES"
  end
  language "fr" do
    sha256 "d481add0f58e9aba6b28e65e24c6393aa7b353725b710d54ba9ee639f8c6dac2"
    "fr"
  end
  language "it" do
    sha256 "5bbc8a9f0c41d78b66e9b852f113cda36c5a7d32092c1676f620567a3b8a925b"
    "it"
  end
  language "ja" do
    sha256 "b86bc67d5e05ec9fc386cb23f37fef85151eddaa78f33fc8a5940bc867d2169f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7b5d36644eb5e1217bd96d8ef9b4e4169d268b0c26b484594e3106744ff844be"
    "ko"
  end
  language "nl" do
    sha256 "12996f0c5f2d2d36c488b375bac7183cce17b048fd9505082919e5ca526fa166"
    "nl"
  end
  language "pt-BR" do
    sha256 "c9a1721cf87f76b12cf089f7634cb3d751fb82fc67c096d69102274170fbc92e"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd4903fa70697e6a84d657216466e6b74ba7d48f40b6b994ebeedf3161a8a216"
    "ru"
  end
  language "uk" do
    sha256 "2eb4909a19cb8f2f705b9bb02525cdda32b7172a651d2978e1e85fdb1db57499"
    "uk"
  end
  language "zh-TW" do
    sha256 "beb0284d455134fd13183bd47541ac0f20ffe625aa5a2d3973abcf64074f4d38"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd2f5e9998189baa81f600a9206fa92747d0312dc7a32f8fe5b24906ee0eb337"
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
