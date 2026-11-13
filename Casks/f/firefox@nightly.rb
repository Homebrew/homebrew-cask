cask "firefox@nightly" do
  version "162.0a1,2026-11-13-08-51-16"

  language "ca" do
    sha256 "0f0e13d6ae4d3444a8d7cebc1be5400bc0278929391e9dfbdfa73887d3b69073"
    "ca"
  end
  language "cs" do
    sha256 "a98b89d11a1775a1a9ed8d4a5e48aa5a810ecca30d2f1690dafcfaae85ff4e89"
    "cs"
  end
  language "de" do
    sha256 "7c21a7c576f0b35cc19f662a3e52a7a71f61ecad683b94d5b5447fe1f1d010c8"
    "de"
  end
  language "en-CA" do
    sha256 "c807278c878c4525286aa79c4ce9d5a45d5c50d881a511db02da153dcca1e83b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8f78b4b3a7d3a858e070bd2073cec8501efd3fe51a6a7d40befa902190249269"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74894e0bfc1c497117627f97f49d8ac562e8c339dadd2a898b154c27674c0907"
    "en-US"
  end
  language "es" do
    sha256 "0f27faa1131c4440af4365f4a97da8c8ab652e09452c4bfa86de4d735fbb713b"
    "es-ES"
  end
  language "fr" do
    sha256 "d7cb373465db6d42506505a883dc4da4957be4c399912d24206da74d27c71f88"
    "fr"
  end
  language "it" do
    sha256 "9bc26ef20a5c295287acd62f5a81a0c8f601d4cb6ed94e7783a2ea0d0ce170e5"
    "it"
  end
  language "ja" do
    sha256 "5ddcec566ea263d160fe656260b6554fbc6e57326865797438c0c5f549b82893"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b96da72b5333fc61de7062ac2237994a46c40216c7bb157aff09b35cd4b7f3e2"
    "ko"
  end
  language "nl" do
    sha256 "dd78e268d416de7b4ab440898bc613a84e3f569b87f881a0cf1d6502dffa823d"
    "nl"
  end
  language "pt-BR" do
    sha256 "5d43c703789a92ab1bc10e3e12f53362d803f61906d8d709684eac18d95f7663"
    "pt-BR"
  end
  language "ru" do
    sha256 "a92c713a58a2f24092d0cef5200c933b0345448a889b055be3c4ced1dfcf7e3f"
    "ru"
  end
  language "uk" do
    sha256 "13a188f5be530c769d35131894440211bfefb08c74cb4320f0a8e475e3f7d73a"
    "uk"
  end
  language "zh-TW" do
    sha256 "27dc1ffceb0cc4a0bca25afd5eebbb59d48c04fb542517c82ae0eed0bbe5cf69"
    "zh-TW"
  end
  language "zh" do
    sha256 "b31b5012f3617c48316b05c922f668a46792f244c588c20f595bea3361a9f2aa"
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
