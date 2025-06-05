cask "firefox@nightly" do
  version "141.0a1,2025-06-04-18-34-13"

  language "ca" do
    sha256 "7be5e963f89bbb50c96e7bd55aa87b495ea9522795741454a48fb69de345b485"
    "ca"
  end
  language "cs" do
    sha256 "bc370ed1d5564d2b24227786194960a7d5f61b40ae7382bfb75aa37e6caf17f3"
    "cs"
  end
  language "de" do
    sha256 "66acbbe7632f6de89e818cf0ac6141167355fe860286e48e337f903d1b61e3cb"
    "de"
  end
  language "en-CA" do
    sha256 "705a0c6bdb7a5f5b86f6651a7b1d3200a3ee42e3ba35b7e8995bac12d2a11ee7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "88258b3c76b5f53d215632c6f9622c917507587d3e33917cd4a063714cf0dd4c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a79b1cc338d10c61050cd8f633f7c4eb44e1c4cf2c6b2c6e1d91aa2fd9cb4514"
    "en-US"
  end
  language "es" do
    sha256 "ae64650165a8646e2fe425af3e762c1a87b0f9e7f50e3ab2290c6e16bce3ec1d"
    "es-ES"
  end
  language "fr" do
    sha256 "84ac95dbd12029ed349e6275f2dccd3731a9c04f7edbb00f7b8c28c3c092266a"
    "fr"
  end
  language "it" do
    sha256 "cbf286320e09f0399ccfea8bda7540b9c43ac629923fce7a266c29b09f81a257"
    "it"
  end
  language "ja" do
    sha256 "cf8354edbad8f311522987cdf8f23d4a59196f4c3e3fd7e5d50e0346fe2874b5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "04881d9f49934a5e1dcea184f75931de4c5d92011982996c04b86761ebfc5b1e"
    "ko"
  end
  language "nl" do
    sha256 "7d5df937fa67dad2feaf38ea53e6ce50852bfb4e4041363391601beca9bc36bc"
    "nl"
  end
  language "pt-BR" do
    sha256 "fc509e6b1da3d0b97f58d8835d767e88be14a741203e69c92a8496f587464e35"
    "pt-BR"
  end
  language "ru" do
    sha256 "17e7145a32d0db26d9b9024f3f09cedb3cc4011b181828aa42c4835286426623"
    "ru"
  end
  language "uk" do
    sha256 "fd5b4f4ae3c55ddc9e877145ad7cb43ed04ca3972cc712fb9ebd4e46862ad332"
    "uk"
  end
  language "zh-TW" do
    sha256 "515a1e3a079aa16575f2f1af4043d02716871c7b78f0dba7e1b624a682accbe9"
    "zh-TW"
  end
  language "zh" do
    sha256 "b0c7f3c0fc586d9a3dada680af0324624a2cb6377cfe913d02e1bbb42f4b55e9"
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
