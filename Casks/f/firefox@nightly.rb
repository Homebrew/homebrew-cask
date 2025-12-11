cask "firefox@nightly" do
  version "148.0a1,2025-12-10-21-33-32"

  language "ca" do
    sha256 "91b554eb887b5346495a02a0af9d5cdaee2ac88ada18c33a04be866fa7b89d86"
    "ca"
  end
  language "cs" do
    sha256 "5cc734e3903ddc4f112881e46dce9fe558033dae0d9f14793f3a5d85e448c76f"
    "cs"
  end
  language "de" do
    sha256 "4911d0476e6563546dcd2192342fa7fb2ab0cb62c57971f6bcb5f2fc91f8ef13"
    "de"
  end
  language "en-CA" do
    sha256 "774f7229b2e567033c57447f66bb9ca2c97fa4cc05c01711cff4a5e8d0151d1d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "324229431bc5102c8769411335c305cdf362f3fa06c810db0db727b7a4c531b9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b005bd16a1169e733eda8d357725bdcdcaf96d5037c95438c70718ed1f9b26ee"
    "en-US"
  end
  language "es" do
    sha256 "6f8bb6361fbf0def8988554fb2df8d7160e915d31e8368923da3dd7f6432edea"
    "es-ES"
  end
  language "fr" do
    sha256 "662c7475315d92f0b4b0445d29f3ea5202287308fbaca04e52f9b98e9aa67e66"
    "fr"
  end
  language "it" do
    sha256 "57452759324a4298a6812509dba7e11850b77eac77186ef2dee17d8f244e3c61"
    "it"
  end
  language "ja" do
    sha256 "4e8ba8a4f7689a3b16f8e93de290713cf545936a47a6e7538731943d943cb613"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b8070a5dc5f7ab4b22192db288afc7d3d2487ebbf0c033c6ca386588bd08bc8b"
    "ko"
  end
  language "nl" do
    sha256 "4630883a62983b8a0e6266853ea3178b4adbebec16ef87809150f7e55e3ff6be"
    "nl"
  end
  language "pt-BR" do
    sha256 "cedd70b9a62a64d4ec1f0eda7a5b28f8b79dfed800d4d4d8c572b20579d999f0"
    "pt-BR"
  end
  language "ru" do
    sha256 "955ae86b4659d6852b08a0660e38a819944953069c6cc9ee34cb1d0d8ac2382e"
    "ru"
  end
  language "uk" do
    sha256 "b18e34d82a097203ea1262e2f12f87d96e5397b4f58787782a846d21747bb2cf"
    "uk"
  end
  language "zh-TW" do
    sha256 "e924f4972a4fb1861b7f76932c1a84a33f96e5dfe844e3cb690d5582052ce897"
    "zh-TW"
  end
  language "zh" do
    sha256 "65ffa0896ccac7ff6c88c8e7801767b2fc9ceeedc7b52711319a52b446f9719d"
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
