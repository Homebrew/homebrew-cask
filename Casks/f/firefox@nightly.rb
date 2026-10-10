cask "firefox@nightly" do
  version "160.0a1,2026-10-09-21-40-58"

  language "ca" do
    sha256 "912755070f955581219115a91c006b56266c412c17519d4fb5f44648e61a05d5"
    "ca"
  end
  language "cs" do
    sha256 "fb3e68ba8d613ce6fcae29d2c5957c5a24bb9bb2ce53c1dd52f01cb98122050d"
    "cs"
  end
  language "de" do
    sha256 "148a760711444a1de4416692ad0135e21010734b1bb164bc63801fdb07bf5c66"
    "de"
  end
  language "en-CA" do
    sha256 "d1a04c1200370b24e80d6d0fe3a106fddb3f4e2d499855b35bf8596c0ac59798"
    "en-CA"
  end
  language "en-GB" do
    sha256 "31c320a1c0353a2d6b0120a0d92142367899bb66047b522bff0490810054ad6f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2f4c9147ebd92abbbe2b144039043cec91855ba50b1accd69d94d7457837874e"
    "en-US"
  end
  language "es" do
    sha256 "f901651fe74b46a17bc52b5f33d1914a0690c65dad1f287ee329eb425713f249"
    "es-ES"
  end
  language "fr" do
    sha256 "7c7a439c7764db43475f5fe386ad4e968779745b570d4747dfdc8501e33edcee"
    "fr"
  end
  language "it" do
    sha256 "4f8c133f83a6ba3db982d5a211cc26ac836e1dc7bc6c770e26574e699b1d79fb"
    "it"
  end
  language "ja" do
    sha256 "5281437e08b62c57918693d17b27b10153e5955dca4661c45e78f5abec77e981"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f669fe00e1a63f060ce9ccf293ff75447d350bb2209eb1484288f54f47e2561c"
    "ko"
  end
  language "nl" do
    sha256 "c27084a8af1f9d375064f1c0050de1e13c0952cf99ebf6051d4d5faf47ac2db6"
    "nl"
  end
  language "pt-BR" do
    sha256 "cb18aebea429ddecb8ac95e9394a06a06201bf8027f43278a21e5b898bbad21d"
    "pt-BR"
  end
  language "ru" do
    sha256 "4af0cc4b57d99901eb68ffe5b767ed10377df2a722e669be155482d16e1c0e26"
    "ru"
  end
  language "uk" do
    sha256 "7caa11221d5023183205885c82ff44804e2f0639f5a37d3850d6711207b57183"
    "uk"
  end
  language "zh-TW" do
    sha256 "88858ca771abb30916801a82b49c44b08c378f881f136d5850848236b4c580ef"
    "zh-TW"
  end
  language "zh" do
    sha256 "7fb33738a4570b21ea00ed9b42c7a996c15d39b1f68cd40d022de77337da0f4b"
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
