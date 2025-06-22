cask "firefox@nightly" do
  version "141.0a1,2025-06-22-09-17-24"

  language "ca" do
    sha256 "e4e638de507439d276e1eab3939409f33cc4d4c6487461d113ded3d79654cf3f"
    "ca"
  end
  language "cs" do
    sha256 "cfc3966db2344cc297f4a371466158bafad7fb65b51c97e6e956493459ba40b0"
    "cs"
  end
  language "de" do
    sha256 "d7b606aa8e1b0191dcae3287078190e44827108ea7a5efdd96ac5d41ce9cba51"
    "de"
  end
  language "en-CA" do
    sha256 "3b569d5476e7268ba1b7afbaa2a8acb3a01e832bc6d770057482711baf035706"
    "en-CA"
  end
  language "en-GB" do
    sha256 "36cf5406807d6f6cd23fc8c854ca194575256459b0cf6db67416b2bfe9f5d885"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ee3e8161f99c1a745e68bd643529e72700acf36178508ad8da75e0b371c0281e"
    "en-US"
  end
  language "es" do
    sha256 "23221d3d0e3cab4b6ac79938e9029508c3ad3adfaf0d0476207efa6a12e8f0b4"
    "es-ES"
  end
  language "fr" do
    sha256 "fb0fe5f9869470eaf298a7cb42d5d3a70fa2189a8aac705bd735509b947b713c"
    "fr"
  end
  language "it" do
    sha256 "1f331bcb3512a0a9cc2e1cf3f36985765195d9fc9d5012c06e528e291827965f"
    "it"
  end
  language "ja" do
    sha256 "1b2be9d5169df4fa2593b78c0e498de5a60e3d689b24bc6aa8eef2d156b4b54f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cd2f2eac5dd86d3d007cb9406dfa5f7815a957750af3df55ae36eb507cc9e332"
    "ko"
  end
  language "nl" do
    sha256 "cad61a474605987c097a57076df5290f59045f8d1cfd21b33d5b5aebfcd58195"
    "nl"
  end
  language "pt-BR" do
    sha256 "286300b3fab0475e0d38fe6940df450160a4b9e0b26841f09f5e64f40400652a"
    "pt-BR"
  end
  language "ru" do
    sha256 "7dc537a242c694eac931f701f33bdc2d69fb1fc6c692113b581299bef71b4f68"
    "ru"
  end
  language "uk" do
    sha256 "faa8c97a2046729550019d6369fd9df0dc56aeea02f8397d658e72ff937a99da"
    "uk"
  end
  language "zh-TW" do
    sha256 "595192868c4608255f38732a9a9ebde180709b08f75211318a271ed17797a031"
    "zh-TW"
  end
  language "zh" do
    sha256 "74c0c627df174bffc769c7795b01988980ce49de6994f3a3c7634e40a661187a"
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
  depends_on macos: ">= :catalina"

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
