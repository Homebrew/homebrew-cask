cask "firefox@nightly" do
  version "141.0a1,2025-06-16-09-38-11"

  language "ca" do
    sha256 "1976ff7797966448268e054907c3d12b67044ab0f85c2168073e42e285b5378d"
    "ca"
  end
  language "cs" do
    sha256 "431c8df4899c9c6a8c7e3025a7ef2b39449332a68028bc53e49a107d057c8944"
    "cs"
  end
  language "de" do
    sha256 "c29ee16b4b12bbc41440cd00bf4f54099a91c4d8ad53b6276ca02ebd3bf1c1c7"
    "de"
  end
  language "en-CA" do
    sha256 "5b303fb575317b8393ac50d60110d7ea39b0924769f9736abce428192513f6ed"
    "en-CA"
  end
  language "en-GB" do
    sha256 "03672ac10be98b421649df18238335f8d4a850e33d139d4d0567f5a52b80df36"
    "en-GB"
  end
  language "en", default: true do
    sha256 "908e8f3940667daaea1245165e17996256608b3a2c4d740dc0ae4200f30ad90b"
    "en-US"
  end
  language "es" do
    sha256 "8c023025d76de5f890c8556951cffda883e31666a5edb469aa2b4ce704dfc959"
    "es-ES"
  end
  language "fr" do
    sha256 "efaf90b4849d977628d14a270fe07509f60d1c34c1ba7501f6550a59504e16de"
    "fr"
  end
  language "it" do
    sha256 "0943e1d5ad4e15f6cedddff1337a48341db2be5a9f95e685a37635747dff5a4c"
    "it"
  end
  language "ja" do
    sha256 "2e0cd6000f76597d55aa28e0999c5392f38ac5a34d66694ab5466bf98bf8ced1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4b4f3a141e759fe5f42d83ee9158d4e4599f861291f7d7add2f20e7edaf60229"
    "ko"
  end
  language "nl" do
    sha256 "c0bbaa4b5ce78cd76cc87736defba4c537a68ce34926748d3f28056b9f80d5bb"
    "nl"
  end
  language "pt-BR" do
    sha256 "92454ad7757fad0117c1e286494abf9e3268340ef1bb0a759a19f940071fda0d"
    "pt-BR"
  end
  language "ru" do
    sha256 "c9786bbdd6b0d878442c11739a3557d7c36e7e560fce96ce28c555aac60df602"
    "ru"
  end
  language "uk" do
    sha256 "f853ab69f77df18ab2f687c888a41e4b2ae52f44a64efe5468ead8a3b714def3"
    "uk"
  end
  language "zh-TW" do
    sha256 "fb52242116448f7ef2d2a27964c4cbe18fcc5adc6e9f039e4dc14b6f092d7fc7"
    "zh-TW"
  end
  language "zh" do
    sha256 "725062ac4dcbd363383334dae58c7723d2322b752d18ce585190d9f8b3cf8607"
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
