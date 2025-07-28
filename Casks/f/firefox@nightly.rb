cask "firefox@nightly" do
  version "143.0a1,2025-07-28-09-34-14"

  language "ca" do
    sha256 "6e65be3f62cd3b2923ddce2bb96b85ea778d031aad7839bb38e504c76771f6b1"
    "ca"
  end
  language "cs" do
    sha256 "2dcd51022c293832bf9149e203a05b659c2546ff4c70f0077db6811c861fb05a"
    "cs"
  end
  language "de" do
    sha256 "9821d3a7b45242b3f0927219a86265d6d81e73113de05af7cc6bdeb21c6e0b1a"
    "de"
  end
  language "en-CA" do
    sha256 "f91074c4233fa4e960fd1e8814fabf3970a12241dd365331bc18a55c0ee68330"
    "en-CA"
  end
  language "en-GB" do
    sha256 "67580648cd38595e5b03c9f660e315a790dff2354cf7ef92a281b0942eae72c1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f27071cead53f50cf427a9638ff4ee1742f87cc71924d2a4980851c0cdff18de"
    "en-US"
  end
  language "es" do
    sha256 "61e9e750549015050b1834cf803121218cd165ce208740932b683f6631c442b8"
    "es-ES"
  end
  language "fr" do
    sha256 "5c65521f667ac692608ed1be99aef1bac23121736e2fe05229c9c3564f77189f"
    "fr"
  end
  language "it" do
    sha256 "cba279404a0ab47107ff61082d456daa32128ac13d49fceab9610830a3840c4c"
    "it"
  end
  language "ja" do
    sha256 "281775a45a3d9895d0a2d5fc1719ba56baacbf2337bc526b72d34426ea775742"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "016fa4e4ac24a3a530d6844c2f0b43d74e545db3a0a6db7b1eedcf66e4d7b627"
    "ko"
  end
  language "nl" do
    sha256 "129d005c1d8bafe48df8c1b2a00d73990887821283df854b355d32d8fa880b36"
    "nl"
  end
  language "pt-BR" do
    sha256 "c3914a7bb239bbbcf268d08f49c76e3bff1f599a611f301fb1cd766bac38a7b4"
    "pt-BR"
  end
  language "ru" do
    sha256 "19d6235b30e636ed6ea7b737bbf66d8e2c7a690a335fc4d031905528971bd9d9"
    "ru"
  end
  language "uk" do
    sha256 "21503ea4430fd3861b0df3ba09f53bdda0e145095687cb4853c19b09dd3b4ce2"
    "uk"
  end
  language "zh-TW" do
    sha256 "e60e7586914d69f6ceff1e3aaf66f9d390d315fcc5c00f8682866afe4dd6a493"
    "zh-TW"
  end
  language "zh" do
    sha256 "df6c1de68a618861b32f2d2aa97146d21cdf6b61cb1fe2100a780a40669977d2"
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
