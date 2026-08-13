cask "firefox@nightly" do
  version "155.0a1,2026-08-12-20-20-37"

  language "ca" do
    sha256 "df71776c37a2326b59ae6913c335ddcca5e70116d2afd69783c921c3086d7a50"
    "ca"
  end
  language "cs" do
    sha256 "1070680664f9270930070a54ed22ea4bdff8c0339b8daafeeae3dbae8b9893da"
    "cs"
  end
  language "de" do
    sha256 "4c1572d879b904bce0f7e3ec189942f1ff69ac4fab5a3e75ce6001d3650d2cd4"
    "de"
  end
  language "en-CA" do
    sha256 "6afcfc01125f390fcc7b6f49de3a17289e6aa280f31f63a46c6c98ce51fa03ab"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a5b73b8d54986cc59c378e2f16b6ed913b209a629b2e831a2c372cfafa9e82eb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "962d42591990a0110dc7cb155ec4de7fe437e67ba7be86757fe03a745d89fe11"
    "en-US"
  end
  language "es" do
    sha256 "d95f8715f956a4b59645b4651f41bfd9057ca21991dff9965944e1ea36a090ef"
    "es-ES"
  end
  language "fr" do
    sha256 "6399fa574472dc041b3635f1a1d09588700a6cbc8f16f1ae7ee79a1a2a4ee273"
    "fr"
  end
  language "it" do
    sha256 "bd336541b8df58a615e8d7a55aefb6e690b7e8edc335861fdd2cd577516ea30f"
    "it"
  end
  language "ja" do
    sha256 "5dee69c03a10a9640af3ffa5471e6b4e81472a0667e28c1a0d74fcd55b74040d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1090c2b692b13f65e4a66d1ee598a7b2589d00679db92ce0c9e48f2560dfb6d7"
    "ko"
  end
  language "nl" do
    sha256 "bbffeac408b7350bd005ca10fc0910e463ab538b7c4aa42496f5ca839745f63e"
    "nl"
  end
  language "pt-BR" do
    sha256 "e4609b158370f603a4b5e26076a59fca949e35462c678494dc6f2f0b1159b07b"
    "pt-BR"
  end
  language "ru" do
    sha256 "61a777bb6592423f6f3fc051b29aadd7ca91643ee24810d98e01215f30015521"
    "ru"
  end
  language "uk" do
    sha256 "1c112763026f0a71495b8759086cada75234925ff5383ad5943431f045826166"
    "uk"
  end
  language "zh-TW" do
    sha256 "78a897c86cd209169d9296a4bb2c43697af487ad26e7887746d276a845a2560a"
    "zh-TW"
  end
  language "zh" do
    sha256 "d57d521af953c9e9541e7da78c055fc9b177a12fd4f1bdd367e62272169288bc"
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
