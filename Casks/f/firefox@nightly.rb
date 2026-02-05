cask "firefox@nightly" do
  version "149.0a1,2026-02-05-09-07-34"

  language "ca" do
    sha256 "da71f26969da5247da160a803561217a06a58ee9374f6d46f113acd37ca8ceda"
    "ca"
  end
  language "cs" do
    sha256 "edffa5ecfc30c0ae669fedf51adbde95a914c44241556436fab713f3ea9b0f27"
    "cs"
  end
  language "de" do
    sha256 "4e0c7d1a500017f0d222d25024f2f143928a11149a088b8c959b034e3f97d4c8"
    "de"
  end
  language "en-CA" do
    sha256 "97053cb0dbf3594d01f9339ff763222d1cf7ab4227156cd571d6d6fb7002902a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4c37e7b75b82b0587b51fc9c5acb2f5f448cfdee2b0a6bd68fe7fa1d66e746d6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "99f5adcb8ae6c93d12f2a34e57a72843b54b04c2b9021e49ea7d28d29dbc640d"
    "en-US"
  end
  language "es" do
    sha256 "24cd35823bf43b64eceab1adcbd069ae8f44b03c5390b1f27ee2e89383c475f2"
    "es-ES"
  end
  language "fr" do
    sha256 "8105de783eb5309557aac9593660474e1605634c612cab934507027e57baebb9"
    "fr"
  end
  language "it" do
    sha256 "1df4494086773c19a945799f317929877084345b44111e07cd84d4e140fd2fe7"
    "it"
  end
  language "ja" do
    sha256 "c2b10cd2cbaf695daf1c472a0b2ce2230c18050e449a18a7f89c1afcc601c949"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4a09e4b478c923d7d5ba813fa62196bb749fc3491cfcf7c33ef43f647993c0f4"
    "ko"
  end
  language "nl" do
    sha256 "74d9d05e6e8a75ce320c8297b59aadc7cd34ca2d10b1baca28be7c367c66ccce"
    "nl"
  end
  language "pt-BR" do
    sha256 "b19e046ae31b36276953c0872a3513456174c83036d25dcef032a77689a4c37c"
    "pt-BR"
  end
  language "ru" do
    sha256 "4de0b27d54ff1666cd663f19e84cbb45ba40d5b305dc0e80af6c503031e8e1a6"
    "ru"
  end
  language "uk" do
    sha256 "b580b4cedac5d26fdb27d2feb6b00af8285d1ce9f4d094abc720d0f780562209"
    "uk"
  end
  language "zh-TW" do
    sha256 "b684e2947a418b6439c9ab81897c4f26a45f7e9e62d05b9bcae8afc06fffa36e"
    "zh-TW"
  end
  language "zh" do
    sha256 "a04ac6db42366a87396efd133ec810d37aafd8dc8eed470aa163cf0739c1e21b"
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
