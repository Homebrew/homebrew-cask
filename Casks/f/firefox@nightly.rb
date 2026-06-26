cask "firefox@nightly" do
  version "154.0a1,2026-06-26-04-09-54"

  language "ca" do
    sha256 "67ad1b42f63ed81df15cc1d5aa2af2a2228bf2f7cfa2873922f03017aeb012db"
    "ca"
  end
  language "cs" do
    sha256 "5a72a15dee662a4976a599bd3d7b7245c2a378480951712bb9bf2b1ecc8251dc"
    "cs"
  end
  language "de" do
    sha256 "d5c5fc168acd51635e38b6878de9da6176aa26fca8bfc5f130f0900cf2f15f86"
    "de"
  end
  language "en-CA" do
    sha256 "a481b932672cc88f1acdf6102f61bb09f7bde036204db204ad06a35f00378cdf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d5b5e5cabfc7b711435adf571d492d804eb55252b1930162a3f130c9de77fbac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "158ec9f4866e206c60d42be2e64521f0a0373472d7644628e5394168ed3b32cc"
    "en-US"
  end
  language "es" do
    sha256 "6c7da53ca29866f19c8680ced449e5446391667d5ecb08782de4dd28184f4fc9"
    "es-ES"
  end
  language "fr" do
    sha256 "82dcac7dc6f2f7a974d610ec8c21e813a1c8cfaab837a550f3b3fd618b099fcb"
    "fr"
  end
  language "it" do
    sha256 "81c96e534bb86866619c9e2ede34093e23dde61f830eb918bb66c133040c8faa"
    "it"
  end
  language "ja" do
    sha256 "b71c12151ffc08f04579ce53e91de29b3c1103eaa340c178526373fb26e1fa34"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f068e42f6ea7c24b9b1de5cd1e29e52aa34ed5dbb8e05344d678996341205e85"
    "ko"
  end
  language "nl" do
    sha256 "9c2bb4bcbb041c889de48cd6f25d950698359b18e72b948fd35abb153fb4a4c9"
    "nl"
  end
  language "pt-BR" do
    sha256 "4825dc9be4ad5109230fc3c2c77df138687b072001e20eb57f676dda68c5afa9"
    "pt-BR"
  end
  language "ru" do
    sha256 "524e15dc53e15b0d5736b297dfd51f76ce2e7cd19c95c290d2e296ae9cfd5955"
    "ru"
  end
  language "uk" do
    sha256 "16f897c1b576385d7053b276d92a8b3ce6a47263903a64735b5716a266c26a18"
    "uk"
  end
  language "zh-TW" do
    sha256 "77e917b1966ca7986a0c6b2a99894e987469163d5a2f767bcf4f9e325dadf134"
    "zh-TW"
  end
  language "zh" do
    sha256 "1e0804e0e190d5e7508cee62c1ba54737ae41efd1dd9c133415df3963517ecc5"
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
