cask "firefox@nightly" do
  version "140.0a1,2025-05-08-21-50-32"

  language "ca" do
    sha256 "763170f51255a7b7b588fd6fe6810c27c47dee4d5b54b7602960614b4e74f754"
    "ca"
  end
  language "cs" do
    sha256 "8bafc2f569e9b3363feb859febe08e0cd8ba42476055c87f5dda66bd96995ef1"
    "cs"
  end
  language "de" do
    sha256 "eef261c8166ef6968f2ca8825f0249f6d8088330ab0ac401b8c003507301975e"
    "de"
  end
  language "en-CA" do
    sha256 "be2d3ea533f75b9d4ae5bdbdc812dd43012833139823b1cb40849e208eff7b29"
    "en-CA"
  end
  language "en-GB" do
    sha256 "10996b2ddfe7290ce65a6b9bf3cec38335408ca85ccf4c03555aa9a562c65eb9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c6c9cea3f6a0591e7d2d5e08c56de6ae23c6626e9dbbfc8992346460a2b24c2d"
    "en-US"
  end
  language "es" do
    sha256 "2923f8a856b89cc874286d64948af812ee4be3e97368a10bfdfe0d18d8b1ddd4"
    "es-ES"
  end
  language "fr" do
    sha256 "62a5249a7ae8e9a5a31251e24df7f15c5d4ee2a7dfdc0c3efce53682df1b5da0"
    "fr"
  end
  language "it" do
    sha256 "21d12a5c93d98028da0e1d3aad35282d8b05dcd45baeebfc3e1859122da803bc"
    "it"
  end
  language "ja" do
    sha256 "6e6245e7a4c50cc0249b7730b6e0477e217358d7757c3a55894382f900d8a758"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4cf7a3246d6107d2372a804aacc963b951cdc6744b488aa07e3af8e7500736a0"
    "ko"
  end
  language "nl" do
    sha256 "220f20f3b6118e1c3ae7b9e29ac5861174d94bba3de1d2530d0cd971700a00c2"
    "nl"
  end
  language "pt-BR" do
    sha256 "837252df1b40307a8a7e40d9e181a63705589b7403a5ae72bcbbad5094d01042"
    "pt-BR"
  end
  language "ru" do
    sha256 "55e79e435230f06320278cec9cdf84ce088da3e81f5fc4675d4e208dd7d639d1"
    "ru"
  end
  language "uk" do
    sha256 "b0c3240041dea43ff127ec3eff325ddc0a3f225fb09e2a17d20a7bbeaaf11a48"
    "uk"
  end
  language "zh-TW" do
    sha256 "1ac5c9dd16b15489cbfe02ede9be80552b949b0755264957a446b42cb457b901"
    "zh-TW"
  end
  language "zh" do
    sha256 "fcf2f6681726b3dbdc34f2f12cf3577ca79ba20d834875ad73427c0665ef9990"
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
