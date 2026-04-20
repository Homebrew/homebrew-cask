cask "firefox@nightly" do
  version "151.0a1,2026-04-20-09-14-06"

  language "ca" do
    sha256 "798c3c4c293dbaebfb0e30bc8e0a853d5d0db9a06f223cb21d2ad58a5a868c67"
    "ca"
  end
  language "cs" do
    sha256 "e4bfb8545fc1e9def1d7b25a47784760e366cbd092ce11683091e7e5294447b8"
    "cs"
  end
  language "de" do
    sha256 "651000e45f06f0216ec947ad8c7cb4ff459a16408f423763d880dbf57775db85"
    "de"
  end
  language "en-CA" do
    sha256 "3113c601373bd7be125b611da6aec621ade085db59d701d21d2f71869981d298"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8c18f4243799e9244bf69f8d2f2e9d85f0170810d0d8fa055c425c0232cd1021"
    "en-GB"
  end
  language "en", default: true do
    sha256 "80b3252c6f845002d379dd942121de9fa2b874319296534453c11fa77ab6e1ea"
    "en-US"
  end
  language "es" do
    sha256 "b0a9b0584908b9c31e90658267c784f275b9067a58d6092341d1cd81af1df232"
    "es-ES"
  end
  language "fr" do
    sha256 "09d0bc37275049e87c91ebd5a634a44ac211af64c5642707c736b155e4df3562"
    "fr"
  end
  language "it" do
    sha256 "66572ff1b0f7209399e2ec0b8b60f3d8833fd51f8e0ef9613918aef63e8a1d04"
    "it"
  end
  language "ja" do
    sha256 "3a20b3cc6a026b6e0d326725e4e606cb1bc6ced448ea104247cb10f7dfe735fe"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a356f28fafa9c12827c1af8a1a5d223a56ebf9a440ba8ee9b221c1e5c05b87c6"
    "ko"
  end
  language "nl" do
    sha256 "9cd43e1ce58aee56b157c99a9fa68ab4fa0b2b0dfbe81fa1e3decac85643be2f"
    "nl"
  end
  language "pt-BR" do
    sha256 "98a530f21528a036102a76944b54d5d1cd2d2c29369cd45e236ea8b3b1128943"
    "pt-BR"
  end
  language "ru" do
    sha256 "a1c7cefc76dfb2c19442160709bada47da8bb86ce1a8a322d5a56848a0e71bf7"
    "ru"
  end
  language "uk" do
    sha256 "6db0e6d62e3dc0108bafbdbe18178a6f7224264e92d44b12decf6654532286f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "7aa4f88dc7127a1e2560d32b4b306881e0f29728c1e215a9fa0a7163546bf367"
    "zh-TW"
  end
  language "zh" do
    sha256 "437c997bd036811fe57b3e41c778b43af71c1787825428f2bab09519999aa2f5"
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
