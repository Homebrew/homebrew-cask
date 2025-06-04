cask "firefox@nightly" do
  version "141.0a1,2025-06-04-04-07-11"

  language "ca" do
    sha256 "3bc00392f5dcb1fa834a3c1d5b4c24e3e0cbfab5b83464df84e569d9e0afceca"
    "ca"
  end
  language "cs" do
    sha256 "aad0d6b251b6c67d41d5248fd6fc1c33290f5e3b1cd7e63666fc97aedaf89a20"
    "cs"
  end
  language "de" do
    sha256 "c4fbdf88807cd94e3d6f0720ee7df9aa64ca3a7d6a10b4294fbe4a8b93681c41"
    "de"
  end
  language "en-CA" do
    sha256 "be11a89c0061e46facc9cef52bae7d1149aaafbdcf29d8606bf946b8f12e4d26"
    "en-CA"
  end
  language "en-GB" do
    sha256 "157e2a941efb1af0fbbe9352f71eddf61a6cf3dc286cc3eb2651bbd885d27c0b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "79dd749d77d212e88e2bbcfa3e08d7c8a8d10be36d514897eef2a64635a77b78"
    "en-US"
  end
  language "es" do
    sha256 "aca73e32da466e5cac837ef494cc3f066b0715a36e82fb8f397f5e035e08362c"
    "es-ES"
  end
  language "fr" do
    sha256 "9980cd6e7e2026ba260b11e1f9ae7941c76a7f8e9a2bb0c63e8cf149bdaa0b1c"
    "fr"
  end
  language "it" do
    sha256 "55aaabd01fb0ecfaf85ee866670be11560b4205bcefa0c0f00c5ecd50b799cc9"
    "it"
  end
  language "ja" do
    sha256 "42b7ab2b27c0aef21393daf1df8bb4626fd039615614bd0a704b0276e3da2887"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d074aea3202ccaa7b3023252f57722cba90d2205bbab698d316999e7913a6b6c"
    "ko"
  end
  language "nl" do
    sha256 "6b88f1cb6ca243c48b397f36e941645f13eb94513591f37ae6f48adfcbe9cfde"
    "nl"
  end
  language "pt-BR" do
    sha256 "d2bcce8cd82e1efe2cd00cbec723e3b391633416b3b9e1ea73ae39f6628b8e18"
    "pt-BR"
  end
  language "ru" do
    sha256 "cd1606ca8eb45a37dc10fda5aff3c1df2d5585127fc3a818ceaac2b00673628a"
    "ru"
  end
  language "uk" do
    sha256 "8f68e0acc60d06211908113cc96af94a75762261f8fe48a853c40c2f42497c25"
    "uk"
  end
  language "zh-TW" do
    sha256 "3e5c9d58c2009e7ad72118dd55c424cf2b1eb201f33eda598cc03467917391a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "ed1a08a85a99db32a8e5491ba2ef28a06098cdd1e942d67da058e1aa41a75758"
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
