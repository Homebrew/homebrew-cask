cask "firefox@nightly" do
  version "155.0a1,2026-08-10-09-30-15"

  language "ca" do
    sha256 "c83a6a1272af92337a9482f10899e362d0dcd9350185a078c48111bc1e0d0775"
    "ca"
  end
  language "cs" do
    sha256 "f30079d3e5b03ede14445d7e487489aac0683b0f11e64a934d9bcb78dc5bec64"
    "cs"
  end
  language "de" do
    sha256 "034a8b26696aa3872e677224c86000b78150bca00966c9ee5bc8e3739ed0469c"
    "de"
  end
  language "en-CA" do
    sha256 "94afbb3767f78cc99c279360a2951cbd3c78a41ba18ea558681526169f7d9df5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6dd75db6b456c666435087d4b10f2fe364b6d4ee34b2bb49587198800db8ee3f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d71c1e39201452b3b6f46a671b264e61603ae6983609da4f37620b3651564749"
    "en-US"
  end
  language "es" do
    sha256 "16c55b6ea5b4da5c1175b179b8b8a62464c4087da582ed8a8083ad07cffa820e"
    "es-ES"
  end
  language "fr" do
    sha256 "a2a3c021d9d8a563115e33f37efc4e3a4f02c34d379e35f573c4ff249490f8e0"
    "fr"
  end
  language "it" do
    sha256 "3240f0d0eedd817e744f6f8f79ac9a989227e9b4e791631b51122ab8e3eebf6f"
    "it"
  end
  language "ja" do
    sha256 "d3d8ac97e7acd678c2d78a827c5a890cfc4acdf368dba775c93eb22fecdee92b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "17c85d6d97d294f0695ced65b268f1a4b9716563ccaafeb216dd4bb2ea244791"
    "ko"
  end
  language "nl" do
    sha256 "4ace1426d376308744f32180b7cab3429ba2a76d61ceff94cde89ece8ca4dab7"
    "nl"
  end
  language "pt-BR" do
    sha256 "9130db12b6a96240d137882025f7c137520f439d3e3cb2ed172a0914c8bab05f"
    "pt-BR"
  end
  language "ru" do
    sha256 "bc6dbc5fdf71e5d9ad4f370904b11d2ec6b58a5595bc0d7a5cc26cc38b27143a"
    "ru"
  end
  language "uk" do
    sha256 "2339e8ce7f370ecba76fae1b5e467a5bfc46af26a68f4b0d6b4f9bf253b117b6"
    "uk"
  end
  language "zh-TW" do
    sha256 "02495852d216793af28b22514f6e97828d3beb04c2aafc386e2ef511b785f4f4"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b807d0e5a99f76acd46d0c48967ff96be2e368868c60de582fce74ec7266e9e"
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
