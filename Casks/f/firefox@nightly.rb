cask "firefox@nightly" do
  version "144.0a1,2025-08-31-09-21-29"

  language "ca" do
    sha256 "ff0e0d6251a06558ea87abd79ccc3806e8ae2f21185536d2db4474611d73e20a"
    "ca"
  end
  language "cs" do
    sha256 "18655176f630084ea43b772d44e151fe56f1e9a2c670f9026dae78090198860b"
    "cs"
  end
  language "de" do
    sha256 "fd67a0e48173c14e7571d32439de778d26063a3e554ff82f2506bbf4497cc253"
    "de"
  end
  language "en-CA" do
    sha256 "51303962e44ac836c296a6483c2b68c0575a33895c1df5c7367b2a38ff92d2b3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0b4a6d68e9544143df1aae874dd203f641fdf8d62e3091e8154f7b0832a7c4a5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5e228062f019b0e3b8049c810f7a080d1cbdafdd09fe13d82d3fbe74c3b1efb8"
    "en-US"
  end
  language "es" do
    sha256 "9ce36871d01189c563d7290f85520a04c27a8a6ceaf6ea0ac5cbd56519bd545e"
    "es-ES"
  end
  language "fr" do
    sha256 "f0473614c6a6cbef2849f53ced90a78965ed9cdde62e0096a5acf1b8d6d9fad0"
    "fr"
  end
  language "it" do
    sha256 "825e1c43d91af33957cadde8fe85d4c891be4a2c029e9a3990f6c01ebc23765e"
    "it"
  end
  language "ja" do
    sha256 "27295d42014fcdfaf66c4b254abbefad70b748265fdac8d02b5ebed0ca598b04"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bfdd3f5c2849479f947270d7230689ad89e20bc4733c27717e9ed5db61b5efd1"
    "ko"
  end
  language "nl" do
    sha256 "27f357662b2762be670e5eac0a76839a6ea245cf845711e74de0b6984cf5298f"
    "nl"
  end
  language "pt-BR" do
    sha256 "e1eaddd1137f62818560f9b5e8d06666076049b4d108f238a4bc117c5f39bd83"
    "pt-BR"
  end
  language "ru" do
    sha256 "a1392940ba9db08ac3bfff3ba3ce8444a8105455ea34bac32abb72a57173f6ff"
    "ru"
  end
  language "uk" do
    sha256 "a0ec86bd51b8d20c24512b12aba0868f20e3504003b929a9c7937e3b25a8eee5"
    "uk"
  end
  language "zh-TW" do
    sha256 "876fe0872a75380fc826a841fc8b0e54a6b06997b38de527c6dbc7a9e5bca12b"
    "zh-TW"
  end
  language "zh" do
    sha256 "d8c9c7f7539c82c27d6534182ac55a67b35f454ceb58591f3f73f7557b292e7e"
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
