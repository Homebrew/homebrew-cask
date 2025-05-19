cask "firefox@nightly" do
  version "140.0a1,2025-05-19-09-29-49"

  language "ca" do
    sha256 "e494396572daed79d1f2ed6766de54755ac48add91a8d02e03e8376420d373ef"
    "ca"
  end
  language "cs" do
    sha256 "f2f80184cf130ae4742affd014ae1d236488eb15c2a7db81329671c88f8c0fbf"
    "cs"
  end
  language "de" do
    sha256 "124349eeec0328bc9a29b2af726d998a3447e8b9454796defa336385ebaef519"
    "de"
  end
  language "en-CA" do
    sha256 "a94dec10486320785e70d7f83032c5d51a484d0f240073e88010b12775a23ef9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b7cad1ccd00c858ef85f52b74e5b7ed8ec0b72cc0474455145808ff6e26ed747"
    "en-GB"
  end
  language "en", default: true do
    sha256 "212933e7a2ddaa7ddb39e60d61018e55f6d37659c44fb198a9bde657d05a35e3"
    "en-US"
  end
  language "es" do
    sha256 "aca29067617b448edf070d4ecdabf8e665ce35b2730ec82080b1de013bd73ff4"
    "es-ES"
  end
  language "fr" do
    sha256 "51f44a486cf826bd41fd2d366217c9a3164998c555a1038e18b71348c04d2718"
    "fr"
  end
  language "it" do
    sha256 "d96af3f9c6ed470be443e5049a893b3d0ad94d9b24e38355589f9968ee4f0c2e"
    "it"
  end
  language "ja" do
    sha256 "8a391e6472bfaca45e630c54bf76f7f44a23f28801fabb61126a05fca0a89cbc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e08671f3916b382f50169ccf8f631a60b766691c3ad254bcbfa4ea96721bb6af"
    "ko"
  end
  language "nl" do
    sha256 "c4c3ca734cc680353232f841892f9eccc763c20dc34b6fba5bc9215d40a75b0a"
    "nl"
  end
  language "pt-BR" do
    sha256 "c2a65b45dfdd863f25b07d763056bfcf8ed029d402b6fbf55b3bba7d0dcc8948"
    "pt-BR"
  end
  language "ru" do
    sha256 "38e71dc144c1d19051c97b31669ea37af909a9ef6a7b6344e3a6ab446079ef68"
    "ru"
  end
  language "uk" do
    sha256 "07d197ad4e09b9d492918ccfe348cfc6053d86ee0198f787a3ee97bcfcfaac82"
    "uk"
  end
  language "zh-TW" do
    sha256 "14e87aa416a3045520149de64c4d80909dd1810ac9bcf6d4a9e515808150e9d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "5b1ebe4d628d1799e50788e7202d6fdbddd91db325350c72539911eaa3bbbd35"
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
