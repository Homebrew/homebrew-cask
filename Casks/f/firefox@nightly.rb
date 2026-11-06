cask "firefox@nightly" do
  version "162.0a1,2026-11-05-20-50-04"

  language "ca" do
    sha256 "06e87c17f9f77564a1bd1aa68f1e0fa83f22ac54533bd6dfc806f392fdbef784"
    "ca"
  end
  language "cs" do
    sha256 "42158f85a996ddc22f81b53f62f1b248fe9b1da6fc337cc4a0aae7516f7cca91"
    "cs"
  end
  language "de" do
    sha256 "dd38ed9a06d2dd2880597b58690b243c5442a022e1cea80ed2fb87555d2ea524"
    "de"
  end
  language "en-CA" do
    sha256 "e23326feeab8cd292697e34e10f82a38bac55167ecef2cda79f80d9886e440cd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bc9cd0bb709b423fbfc549d8bdf1870087759b6b695a6747b65a05c6ea4a62f8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fc249a074d5c171bd302c1f708d4330cf570609cb90d6d2a6af71cd6d16b6a88"
    "en-US"
  end
  language "es" do
    sha256 "7dbbba0efc3dce4d746692685d78be6c69f064545ac0329d63b870da9c8f55e5"
    "es-ES"
  end
  language "fr" do
    sha256 "386af57ccf8562a1367776fd25b43af05430739983ad4dda88d6568fca2c9d47"
    "fr"
  end
  language "it" do
    sha256 "678de4c89be10b792bfd3fb455503616a3b250024260686c6661742e7a127622"
    "it"
  end
  language "ja" do
    sha256 "986b6d7d337b109d5359d5039b020e5cc8ef11c48739359adb0e84a95bdea8a2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "af47c4218b9732ca6ff63b9c80463056f9813f307f9922627feea1b8ea8393c2"
    "ko"
  end
  language "nl" do
    sha256 "15238c81064efd80a9e566f27995f0fb6b54215ac815f8b12e1c6e32b9b0dc91"
    "nl"
  end
  language "pt-BR" do
    sha256 "71e3b8b55b326208a8dba27a7f31e661551b73728b57e69c1794791bfa2e9232"
    "pt-BR"
  end
  language "ru" do
    sha256 "18d3240c9a46f18bbd0af2260fdcd7517992cfc58dd54e70cb57b9f44fe5c234"
    "ru"
  end
  language "uk" do
    sha256 "0b4e5c8e9e6deb5243ae492f2221aa28d5d25d90d8ca2a3b912bee6499bfbbe8"
    "uk"
  end
  language "zh-TW" do
    sha256 "43c11f95c498f30dc057901045e744d47905ad50387983c4aa4fcd8fae002b8a"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc51c811e4cb1d37357b7a6b082ff4d477b8bf546a071b7f562a412c90f9034a"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
