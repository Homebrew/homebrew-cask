cask "firefox@nightly" do
  version "143.0a1,2025-08-04-21-33-32"

  language "ca" do
    sha256 "f904b429190c1e834ea2c1488cf64691f1e4ae2589e32e569827c223a6e739e5"
    "ca"
  end
  language "cs" do
    sha256 "7736c32620183e1ffc7edf6a783cd6e62fd2112640f85cbb18a23c9529028104"
    "cs"
  end
  language "de" do
    sha256 "4eef1578c2f81add6c43a6b91aa9336aa9c9a120dcf8800327f9e39ff9d44ba0"
    "de"
  end
  language "en-CA" do
    sha256 "d2f45dfa884a6e7d3f30ac7c8107fb33212d37d40e1b54440cb75ee14529bcd3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5d4c0378f2b531d7d4c965b8b0d0ee56128e6e89a027a9c33f02a6065ad477b9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7389f0d60035b97d77a82011a52cbe06e8b254ace1f7299d611d2dbbc0d2658f"
    "en-US"
  end
  language "es" do
    sha256 "9480e2aa4bb2d695e55cf667010378bcf2165cdf87309125bfd9ccd601307efc"
    "es-ES"
  end
  language "fr" do
    sha256 "97b56260300ca2a9ff0662490b9674b045bba85f219c61f60b9976a4c3139f31"
    "fr"
  end
  language "it" do
    sha256 "82b4c0588f2e71482005ae56e7b60ae4b81dd3cd08662d6624fef0eea3ceeb10"
    "it"
  end
  language "ja" do
    sha256 "22a346267325d4bad722564914ccf159a3c4a1db7b8937284fc3c1e406ef47e5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "96934b949f58e40ecef2d34b06937213f0c2bb360dcd9aae5d1287662b1bf024"
    "ko"
  end
  language "nl" do
    sha256 "9204b07f56b67014f5c10fb1cfe1da2727aa62dc124d5974b9528b1c59d17b54"
    "nl"
  end
  language "pt-BR" do
    sha256 "fd7b80d883d9a6354126f215fb127711d00261c34af70da4e4bacf27f1ee7278"
    "pt-BR"
  end
  language "ru" do
    sha256 "a767fb85b9a36987eeddbb244ff25e00133d39697f68ff90c5bcf8b28e947a76"
    "ru"
  end
  language "uk" do
    sha256 "7712fa0991c288b38029b9532293e43d38076fabca32ecc90abc9543f322ec50"
    "uk"
  end
  language "zh-TW" do
    sha256 "283d011f7394d6fdf9d3517829105be0ec64e52c20d9477dde379c1ee94c5bf1"
    "zh-TW"
  end
  language "zh" do
    sha256 "ed275b8cdece462f0afd35ef3abb925452cf3990e219438e4956be86a400ff80"
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
