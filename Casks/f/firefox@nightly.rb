cask "firefox@nightly" do
  version "143.0a1,2025-07-26-09-11-24"

  language "ca" do
    sha256 "1171a7fc3080af64bd71f1b013e108ccc2b39af9b4117d983290223a953b078f"
    "ca"
  end
  language "cs" do
    sha256 "eae1ca2711510978df6f5a9b5a8a3d193d57f934e5d687bf2e435eae6ec52658"
    "cs"
  end
  language "de" do
    sha256 "da4e5a8ac7747d11c071c52a75297c299661c5a1d10e473437aadac00f6e15ba"
    "de"
  end
  language "en-CA" do
    sha256 "aa0d6df9c3ca7b0bd796042ed8ce7592607f688845fb76f156e601061e2088a0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0cb57fc73e4903548687afab9ced66593892580428e5657a375034e1b07a79a2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "13795a9be375a4693e9201352007b44566b8e7845957a34784575d7c47eb5665"
    "en-US"
  end
  language "es" do
    sha256 "7bffc81e6c954643a38585e25331dbec95d5c6fa879602523c410e742eb41615"
    "es-ES"
  end
  language "fr" do
    sha256 "3c2dab422eec76343cfa01f9a041d573dd94edbfd1e12b9da3b6e856f45d2fe0"
    "fr"
  end
  language "it" do
    sha256 "6fe3ea561ee02254da3c6009736857227c7b8a55df50756fa58af8135cc4b2b6"
    "it"
  end
  language "ja" do
    sha256 "5a91fb798e64d4c885910edaaec5e0069b7dd03c25ed5d569e6ef5fff67f5c10"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "55433c2cec975a80b160f07a40452c8f1f4397859977383d0f9bea202c9977c1"
    "ko"
  end
  language "nl" do
    sha256 "d9b1087898801aec5d18a658ba2084a9d1958549f61720ebb685cf9c44c30806"
    "nl"
  end
  language "pt-BR" do
    sha256 "de750ca41a1c8c26713b795f1e0fd723b60d10d39ca030ac86dbd3eb0a0ec8d2"
    "pt-BR"
  end
  language "ru" do
    sha256 "9fd368a14825c740f06fa6312ba682c8113370e300db44c93c611addb50341bd"
    "ru"
  end
  language "uk" do
    sha256 "d35eac4b67c6d2ab0db0d7da2ccff11735e4f0c9591519b16f7f76413ebbc0be"
    "uk"
  end
  language "zh-TW" do
    sha256 "8b30400cda9cd3a684fc9ee728dc96a53bc134960b5c47bc5fbc77c39add5889"
    "zh-TW"
  end
  language "zh" do
    sha256 "5763dea61c7e020a25b271bc2d0ae075eaba831daaa951a8b477f3080e89dcc5"
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
