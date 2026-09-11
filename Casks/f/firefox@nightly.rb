cask "firefox@nightly" do
  version "158.0a1,2026-09-10-21-41-18"

  language "ca" do
    sha256 "c88bee539bb9814e4ce82a84834f3eeea01a70b6cb7e5112b7f31353bdb746e3"
    "ca"
  end
  language "cs" do
    sha256 "d112fa88bf67e9fcec3c8417ceb3e7d74011474e836ce551e4e5df0a6846063b"
    "cs"
  end
  language "de" do
    sha256 "61f61276457aec323c6a3995776faf05deb5c2da9fd46dd7b66c23481f7300dc"
    "de"
  end
  language "en-CA" do
    sha256 "b6ade715a1ff9b125925cad1ec28cb7d86f1395d98a1b7dc38a668b00e9b2537"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3863e5d9c5a7515086de24fa8cc07fe5746895c4d3758582c32871d1fefdf380"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2da9357c4295fb4d472485c56587ae0c48ce8cf7343e114197141535cbb2b7bb"
    "en-US"
  end
  language "es" do
    sha256 "aed318d5700188c7e0e2668ed57dd0bbcc9b1e9e05ee9e77ca184e71648f0df1"
    "es-ES"
  end
  language "fr" do
    sha256 "765205433f8ee7a77c58caa5f3844f282e67ab1e6144f44729271e10b7c8016c"
    "fr"
  end
  language "it" do
    sha256 "1898418956a9ca015746e5b953918d502b559d3632638e6b27301d4ccc85ce2a"
    "it"
  end
  language "ja" do
    sha256 "8b159820f69c9f9b03ed71d88b96808c5aa362ec6d4e1a6555a433920d6f9c58"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dc65a2b48558f48e0c7544abfe23208e36127a3a7a688e5d35edea6dd4263f8c"
    "ko"
  end
  language "nl" do
    sha256 "f953b075da525f54a0feed1370e51a8b924205371f665c12334df516f0c5522c"
    "nl"
  end
  language "pt-BR" do
    sha256 "1221db9f9e2a2152874893ed5f541e24b2e03541d5eceba75acd6bf0d80307c2"
    "pt-BR"
  end
  language "ru" do
    sha256 "16e943fb2e56b96c746282d050dd158d246f139101c69d97a3f5a1b4433e6a5f"
    "ru"
  end
  language "uk" do
    sha256 "17da39648964bc7eda0259972c55dee8936692c355a3728b949209615b2b7c6a"
    "uk"
  end
  language "zh-TW" do
    sha256 "77104f42ca7004e205847576ff1d99e84e00065f18ea22b3fe0094daddbc1158"
    "zh-TW"
  end
  language "zh" do
    sha256 "f38eeca1007b83d4a1c835e2d44224206808c029b0c8a54ac93d2ecd74c60839"
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
