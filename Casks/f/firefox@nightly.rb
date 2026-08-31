cask "firefox@nightly" do
  version "157.0a1,2026-08-30-21-32-41"

  language "ca" do
    sha256 "2b870e75787c4f6d1079a2f60c2a392f9dfc7ecf4725438c5616dd01b281d3a7"
    "ca"
  end
  language "cs" do
    sha256 "6ee593be2b0a0565f84f240af89d352bb7629c93df5b5dc2eb41a370f63a19ff"
    "cs"
  end
  language "de" do
    sha256 "606b93551c117640fbaae3f2b8f3fa1c6e3f4b0e8a68f680cdbb0b00654d77db"
    "de"
  end
  language "en-CA" do
    sha256 "0e3105c111f6750afe15523a706c985ca709635867a9727b933efc7abb7b73ca"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c319e4a64503f71b352a719d459c00855fa697901f04cc2e5db21250606838fe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "33cf1760115c75314d2a7a6e47532d63e20a0fa082a98e9f90ad2a69d809b962"
    "en-US"
  end
  language "es" do
    sha256 "be4c6079aad2c8babc64dd8d0ffef1eefc2766fc6949763e13fce4fa299ea8c6"
    "es-ES"
  end
  language "fr" do
    sha256 "55e84df686f63bb59dbc05e34b4ff40d1fe55372938eb825f0053c8f5b39be4f"
    "fr"
  end
  language "it" do
    sha256 "65a1720d68321256cfb6746142c47a956f1955f2e6ecf4c36be8d26d6c5474b3"
    "it"
  end
  language "ja" do
    sha256 "080343d3810b52f6a2206f4254e8c00c46a1b08f179bf0ba8c4f3b68e67de27b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "adb9a6075e13e3f7b4eb8d6e4158c4cd255974a23f9550504bbc88408be37924"
    "ko"
  end
  language "nl" do
    sha256 "d212ada8ea4f1bf454973ebed23e9155d232a64fdcfdfbf2b2eaa8352e205ce9"
    "nl"
  end
  language "pt-BR" do
    sha256 "69f64f89b1cb20dede9b6c069fb61636b21c65dd4f1f645b4e0883ea8d954581"
    "pt-BR"
  end
  language "ru" do
    sha256 "df85e4f2fd3b894ec95424f4f396cdc9bd700e78f8a8570688d5b8fdaa5263e9"
    "ru"
  end
  language "uk" do
    sha256 "c5f7b244c4a6855491768c7413188a319f9ded63e3f3ee4ebcdfc574115a6704"
    "uk"
  end
  language "zh-TW" do
    sha256 "702d83352e05c8d72172bfd39a783e54cbcac52a364245ac573d27b40d79cb6d"
    "zh-TW"
  end
  language "zh" do
    sha256 "8c455d15f0e19c8277c40e6898d0e6004529e10d2bc911b079929a88e9572161"
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
