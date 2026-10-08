cask "firefox@nightly" do
  version "159.0a1,2026-10-08-09-43-36"

  language "ca" do
    sha256 "dcb911f2beb58543fb2134df19ce0385496c6041d6674fd373efaac02c415bb5"
    "ca"
  end
  language "cs" do
    sha256 "592b9f1c213dfc5beb6a3181f8662c908f2dc0476043c5d798fd6f03e87ebf11"
    "cs"
  end
  language "de" do
    sha256 "5461a91234ef6ff5f1e49e62271865d85c903e06190ecedfde133afb064c0909"
    "de"
  end
  language "en-CA" do
    sha256 "dd9eab7cee2ac468246d5af93186eb0bae260d3eb622e4d7a6f6e1b1a46c2e42"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dd126bc689ec944c2b453de4b40a7670593a25581a4a2c308dfc7046028bc2b4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "caf983624332945c5dcb0956b9a238091bdb1b39bd62c651bf96b9612b94898a"
    "en-US"
  end
  language "es" do
    sha256 "5d77b976d850c27ec3bf1c1d8dc975136924eb0073f43d8620ced752b77d9bff"
    "es-ES"
  end
  language "fr" do
    sha256 "b74734e9b8d8152e969df223ebeb83d3a1f47aaa2b11a361496c444ad98e407b"
    "fr"
  end
  language "it" do
    sha256 "4cb65ea0382ce679ba81029ca728bc8ebc035a14ea75fda1947563c2f72cd09e"
    "it"
  end
  language "ja" do
    sha256 "29888241703140657158dcc24a9bed6b6f3fe988332c54ea9e5572810adc19af"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f0450de2288e88c66b00876ef187bbfd11e61cc987a0f9c5ad11553d41b57e94"
    "ko"
  end
  language "nl" do
    sha256 "ccbed8a35c8ed0c803d827834f8cc36181ccf275e8182ff78af82468145ba378"
    "nl"
  end
  language "pt-BR" do
    sha256 "1b02398003a971eaefa39cb373113c1abc4c11eba9a5c99eca43424d63edecc0"
    "pt-BR"
  end
  language "ru" do
    sha256 "06e01f0b8441112290bcf0216f8656d4144815012dc4f712300a9b5d24026784"
    "ru"
  end
  language "uk" do
    sha256 "2709d5c46c52fa2568cf358ab8d9d4f587673e905109c65b4f9d41a295811907"
    "uk"
  end
  language "zh-TW" do
    sha256 "cc4d4bdd5aa55c43b8663b6d2df63e07203f19670c7ee39caf72668e24f9f3d2"
    "zh-TW"
  end
  language "zh" do
    sha256 "66161ff25503cb213f0e71ccb9ef38515965dcaae26730ec34bf136c9ecb10af"
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
