cask "firefox@nightly" do
  version "152.0a1,2026-04-21-21-12-46"

  language "ca" do
    sha256 "461594ad2eb5da0979da0c1459f9c1a4072d3bf553bed9973346acc326ea1b6f"
    "ca"
  end
  language "cs" do
    sha256 "8991d6a3b2a9bdd0d5cc7a53e827b4ba7d1a3c6f1390e6607e643cae2e6cc0f0"
    "cs"
  end
  language "de" do
    sha256 "923dedc4d011e443ddc796744c5f555eb97ad9fe18a4f3c6b204bc3653c5ef3f"
    "de"
  end
  language "en-CA" do
    sha256 "b3e515185e710bc5310c9a4cc604b56b88cd4c5eaa7375d49becb7884e72d4cc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c5495fdaab2ad146b335cbf912f8b601b1fe9c92df2009c9b17823255d56b36b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b0dc83755a4dc73ba4bfc025163aea21a719d7611b4ab98cd4684bfe083509bc"
    "en-US"
  end
  language "es" do
    sha256 "1f4a79712d0d25d01d00dc2b510da5a36d16795b33be71518835ebd9e44b9657"
    "es-ES"
  end
  language "fr" do
    sha256 "2a02acbc877022db7e4df91e670784004dfa36f81514c487dd7221a9e7843dc8"
    "fr"
  end
  language "it" do
    sha256 "d782474de126c5ed4cfc231269c127de18299d44a5fd6f0327c97bba4bdf0f01"
    "it"
  end
  language "ja" do
    sha256 "491b8141ae050c83680d450e6e613fd69d55a006ff62a3f0853738f484a9468b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d2667ab1200115ab02c2873bf86f8502f73c3315e0f9370a0fbfcb5fa7620dd8"
    "ko"
  end
  language "nl" do
    sha256 "8b64cd80e7f10cd020f82252de5f4979cd0679097411b82adc633701e3c64315"
    "nl"
  end
  language "pt-BR" do
    sha256 "42af0ab25e0e0cff57ac1b1a68c27d1d246235b4391315c872ece774237632c8"
    "pt-BR"
  end
  language "ru" do
    sha256 "ca5ccba0c6cf7978d0d0f75c73d83df7b604c88ad2a76735b6c72c7726d41d4d"
    "ru"
  end
  language "uk" do
    sha256 "b6cef66169cf58aa282a845151313037d30d80bb786a3a1d207ff5ab29865f71"
    "uk"
  end
  language "zh-TW" do
    sha256 "ce2c26b6122288e1b717224c19324b9352791dc5a82bf28a430ccfdab03b2324"
    "zh-TW"
  end
  language "zh" do
    sha256 "4901d2347161f7573a6906e7a043175ec04bc2049158f9bda6612a07c41e1268"
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
