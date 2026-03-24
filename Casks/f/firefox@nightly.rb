cask "firefox@nightly" do
  version "151.0a1,2026-03-24-09-50-02"

  language "ca" do
    sha256 "8792c881f30e2b418f52e9cf9b707eaeb0f584d461169fe67231783193db8cd0"
    "ca"
  end
  language "cs" do
    sha256 "b413b747a0f048281e3f25ede5ad4f7223afa0e12d626aad04be0393bae98a17"
    "cs"
  end
  language "de" do
    sha256 "8143ec3b2ee1f5006b2d90f3c16f01c6a18d2cf7c97ceafc2e66f5a8943fc75a"
    "de"
  end
  language "en-CA" do
    sha256 "af714c4fc4bf7cfec03b2831a26dd56284d678d9d277ee6ddfd3266e4aedce03"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d4167f5bcc45aae33b5462d9e928a2506b9de2c9d511429be0b2f8c765321205"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5bb7662964baa9ffdf5c7900053fe1c305b77234f30cab3d8e3ae3dad1eb3abe"
    "en-US"
  end
  language "es" do
    sha256 "9d367933e3223da7c7ea2ccc8ab3bd9c010b3ecf4711c99112250800bb930f13"
    "es-ES"
  end
  language "fr" do
    sha256 "dd051da9b625f02710a4cf8b3e6888eb35b8f6194a3ef569c46379666747c26e"
    "fr"
  end
  language "it" do
    sha256 "d643d3cc52b6ecb8ac934cb0bcf00b526e9edad287a14267e3adfd0080826a38"
    "it"
  end
  language "ja" do
    sha256 "69072564f2843d83e436f3eef6f3612b029c339eb2c2b3ad922ba39c350dcd7d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8a16b0669350bb6ed34a2df381eb98256c3ec7b904addf9df1484b7d1b019163"
    "ko"
  end
  language "nl" do
    sha256 "f8a53a03ffcd1747d5fa47ca6f197da00edf5b20f8305430ed3b4796f8acdd21"
    "nl"
  end
  language "pt-BR" do
    sha256 "970308cd7d319828ab5f3dea20a874e840395179e870ef88acca20ee29bdc6e8"
    "pt-BR"
  end
  language "ru" do
    sha256 "b2eb35d7c887d8a6c2cc9ed30964d9ca59db21d61945e361a17ecc2b20301398"
    "ru"
  end
  language "uk" do
    sha256 "80dc26f1d8bc0167e955ce199a66998e805887153f35e8af646d1f521236d9dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "213f1eb02f0ad40d76c2db0480b46e14aa7cea55a9c6364b4775c904d8f6ce1a"
    "zh-TW"
  end
  language "zh" do
    sha256 "3593fc3db3d0ab6fb40c40d510e2e4d7fca9f4942283d6a1734df4dad672d575"
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
