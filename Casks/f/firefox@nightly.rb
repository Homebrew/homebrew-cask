cask "firefox@nightly" do
  version "139.0a1,2025-04-11-21-42-34"

  language "ca" do
    sha256 "2774503cebc37551098341fc4bb3f15e83d48d638728201b18458b57e3894877"
    "ca"
  end
  language "cs" do
    sha256 "c85ca8ecb4f3e9c304da055f1a73d7b1236e1ceac3216b31664ffea722b18515"
    "cs"
  end
  language "de" do
    sha256 "afdaf137f1bd75c829438bb65e1f4df316a861233c46af3d78ea85fe9b95b07a"
    "de"
  end
  language "en-CA" do
    sha256 "60cbd7ff39e2049c9046a1e24462aba66aceaa0b2431aec34c1bb309c2247183"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e5992c31738ad98265837b229f79cf15865da42e1dce1e5e5539f91ca4ab8dde"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3e1226cf30d6cc2742a0b4ab60ecf65ffa8ab15d409b0ff8b07c2b45b640fd20"
    "en-US"
  end
  language "es" do
    sha256 "6c4981be445766db9577539d5c3939cbd00d621aa06d2e2c45c22c5c3cb9f54b"
    "es-ES"
  end
  language "fr" do
    sha256 "d63e29e7bbe36a2dc76f4446a2823135d0954d8ddcb62935f5af2b4a75975daf"
    "fr"
  end
  language "it" do
    sha256 "453fc3831fc873fc131a72ff916b55ec26ed0219496bf4f772bb1170e3cdbb09"
    "it"
  end
  language "ja" do
    sha256 "3031a51ecb6189b81bf479fbe5b83704f97882b04cb12bdfab493645769b7ac9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6e19a85099aaf3e91ce71857f348f330827a8b271e1f51f14b1b88f0d3ea5c25"
    "ko"
  end
  language "nl" do
    sha256 "3c777ff5c359996935edbf539cefa250222bcf984b2f757de4e0469c3c874f96"
    "nl"
  end
  language "pt-BR" do
    sha256 "865958aae2a52598506034849b6eb27ea6a5a33a7f47f5f01b5b54bdff2427d0"
    "pt-BR"
  end
  language "ru" do
    sha256 "49ee780965e08fd3364d0258e21e0a18a19560a64b0f7a8748b6dabffac0808b"
    "ru"
  end
  language "uk" do
    sha256 "da418711afca851d2e98f8926f08b41d2ad8f4e12b691538556cb3d3c955ae76"
    "uk"
  end
  language "zh-TW" do
    sha256 "e7158984709ca398e5aa1c8c5abb9f495f4a7a6da656af6f2fad32caa1f4df46"
    "zh-TW"
  end
  language "zh" do
    sha256 "7426791647076a669a5d4095fca07ee6646e96c7c4491531dee300ae01259dcb"
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
