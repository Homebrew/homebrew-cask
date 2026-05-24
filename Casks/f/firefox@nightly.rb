cask "firefox@nightly" do
  version "153.0a1,2026-05-23-21-24-07"

  language "ca" do
    sha256 "60cf5a2e9c8c2de29f8a935eef702a04e0771e54d2ebd6ca228bfc0849b18074"
    "ca"
  end
  language "cs" do
    sha256 "56c5b26965696a5d20a647777c9484513a4c04cbe2cc84edaf84a5c624022546"
    "cs"
  end
  language "de" do
    sha256 "73492100aba57132634d87712215018a31fff3eba43a109afa9d96ebc8458569"
    "de"
  end
  language "en-CA" do
    sha256 "7db4d4994de117a4f59c23bf0257937ebe6915fdd3829d52a14bd4b5ca0670ae"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bffc2ee98d39c95c4557a3aa8ffe64997552ea9e7db970297ef3f40f1227efce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "827f2e75313ada60f2f60c972db72b6dfd98084ba55b1a06b4f41498f74bdafc"
    "en-US"
  end
  language "es" do
    sha256 "f6fc725aae54e91e5dd0ac2d5468b2dde7272eabd4c30f85ff7b142c116197a6"
    "es-ES"
  end
  language "fr" do
    sha256 "c87a8a8b58db31f959f5cd0ebe0dbe65d0155f13ae885344262012f09186b42b"
    "fr"
  end
  language "it" do
    sha256 "4a41da94949c451e4180658f3cc6cc1fd8f1d03b942cc6b780cfeddd41f6ac27"
    "it"
  end
  language "ja" do
    sha256 "35637eb1cea851eade67159077514f94912b4d6d188875e4bc71a35dcf1182d0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d9048bb22fdca87d4009bd20042b96eb30903509bdacf65ad34819eceea5293e"
    "ko"
  end
  language "nl" do
    sha256 "9f6c8ef5481dab6896e7f2563d8fdf9c64e8b482826cc89b49a8f4ae8013033b"
    "nl"
  end
  language "pt-BR" do
    sha256 "542e424a8ef8b9970723c55550567b5e5f71dce6c2b45538606f24fba0f9488f"
    "pt-BR"
  end
  language "ru" do
    sha256 "ed8f5eb85333b2893b01dea9f1bd9034d8255b862ea0dfd6b07efcfbf02ba785"
    "ru"
  end
  language "uk" do
    sha256 "052117033c09a341d61ebd1ea30f88241cfbf6643b43476350b31b84ca9cedba"
    "uk"
  end
  language "zh-TW" do
    sha256 "0c8f3caa5ddfb27ce4e4f323d05ba2da10ce7a0107b97504547f7df24572262e"
    "zh-TW"
  end
  language "zh" do
    sha256 "5cb7a47dbc5034406d4f8f6ffb030b632f7fae029474073a56d83047749cdb14"
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
