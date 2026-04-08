cask "firefox@nightly" do
  version "151.0a1,2026-04-08-09-12-22"

  language "ca" do
    sha256 "8f8c358825c1c34f29dc32d96228ac43dc4daae568ecea15b1dd10c273d21ba5"
    "ca"
  end
  language "cs" do
    sha256 "36cb26ef8166d3bc71de8d4175623d500111a1e5242600ebec70fd1de30039c2"
    "cs"
  end
  language "de" do
    sha256 "b5c515a7255174a50c77cb3231018881b41eb6f11f9d0d0cc7819b91bb68eb36"
    "de"
  end
  language "en-CA" do
    sha256 "cc715ed23074d7a87ab70074bb1d42ec3a9d02152d3fdaa910ac8f8d484a5f0f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5175f907d8590976055baed891d63426a1ab29377f35f78e8d5881db81ff704f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d3b5d626b20a3429c481c292aa29d807d25eba2db70ebb9ee951d2f4a8a43f07"
    "en-US"
  end
  language "es" do
    sha256 "0c90bdcb708ad61b9bca523c72c2bccddacb83cd44e1ca9fdaaf4b895d8ec932"
    "es-ES"
  end
  language "fr" do
    sha256 "e1c6ec1277bf063d05a62f249771f23e68bbc9f7f48e566a086bceed2a820371"
    "fr"
  end
  language "it" do
    sha256 "867c8ab38f4d8212604071449973e89810797a9302301970ed86c86f30286101"
    "it"
  end
  language "ja" do
    sha256 "cf0297dc44a6237a3d954d9be9139db8e1d5283846287b19bbfab1971c41c766"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9da97e9b58a1f92c5f5bd57809045815b76f6d03b3d11e7e2f1dbe7994571f5f"
    "ko"
  end
  language "nl" do
    sha256 "c54b8bb6db66cc847462f1cb12598c3e1e5d995b8ccd30d9c0b3838d8a72c65a"
    "nl"
  end
  language "pt-BR" do
    sha256 "333b2eb000b8be2b08133b8b91dd25397c8ce05fc6162e5bfebb720ade808cab"
    "pt-BR"
  end
  language "ru" do
    sha256 "db0a0d8d14082fcdb9e8712ad4ebdfc3cee307200355dc59ab0314b0f9e6ae89"
    "ru"
  end
  language "uk" do
    sha256 "48d1ab505d0d3f7d582de8fd493326a6044bc719278ebf771669a434dd032b37"
    "uk"
  end
  language "zh-TW" do
    sha256 "c8e93ec3d3c594f06748f7c8f584f503b68b1ab717080f4631f45b4f9ad864d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "117bc19502a6921261b20cb2ab46f220a8399d2c1faea0bfd3420eb23437a430"
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
