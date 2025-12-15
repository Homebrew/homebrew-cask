cask "firefox@nightly" do
  version "148.0a1,2025-12-14-21-25-15"

  language "ca" do
    sha256 "1a59ec10cf7013c9a1a366d7648cb254d01b7c11806faaa44f815f9bc5e7df26"
    "ca"
  end
  language "cs" do
    sha256 "bea3fe30fd954d635329519635669da3a144ca0fe0741da07f027fb2eb23aabc"
    "cs"
  end
  language "de" do
    sha256 "e0f8cdf1291d6253514cefe5493ceadb05fa53352a05e83c3e71adb7198ebb72"
    "de"
  end
  language "en-CA" do
    sha256 "811d843731a8778a9ab8c5c00369011b5af85c40d28447e2a598e8c049470bff"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8d5ad334840672cb30956fe48849d3e39ed812bb09a5dcb7febdbef967165e4d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "888c3f3da7c82108c90271a34255d8cc698709ed6b2dd524d73b92693af87527"
    "en-US"
  end
  language "es" do
    sha256 "111a247c06481555bacb14ed233204ccbb0fc2ba7b33c78627e8cab5bd36e6a6"
    "es-ES"
  end
  language "fr" do
    sha256 "ab0cd7bedb2e16e210a4427460930196b9ee54c8a439fef4aa345b6e5a90d48e"
    "fr"
  end
  language "it" do
    sha256 "580fac068aafa7d6c6f6a74f938626f65c456fdf13c52885c44cff506f248568"
    "it"
  end
  language "ja" do
    sha256 "56522ba9f466ed84db4c9dae8395632947c92dda1c4a2cc6a85c22cc2df197e8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c18bcc110115d33b71806f67f787a71e5029ac750b04cc6a7bee8cc429e2df98"
    "ko"
  end
  language "nl" do
    sha256 "1f57a40b19a94b4bc4c5278d86a1e0265247736ef618e4a2d2587154ee7c4d9a"
    "nl"
  end
  language "pt-BR" do
    sha256 "e9c76b5ad08b3372621737c187b5295abd9087251721ff3078d1e1ede71bbf2c"
    "pt-BR"
  end
  language "ru" do
    sha256 "3ff643d22881d92867001765c431675fc7c1173509c5087b2873afd8e1b98563"
    "ru"
  end
  language "uk" do
    sha256 "703c54807328fc25284f362da770172874193a3c2db76f362acbe87c9466e4d7"
    "uk"
  end
  language "zh-TW" do
    sha256 "7d74652b5e33a42388a66efb09b75659d7de51f8a24021422b307ca7a342037f"
    "zh-TW"
  end
  language "zh" do
    sha256 "65771ad16e437efc489ecd4eb94c41745dd05570414b78910d3898cdf5883e48"
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
