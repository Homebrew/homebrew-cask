cask "firefox@nightly" do
  version "151.0a1,2026-03-29-20-53-27"

  language "ca" do
    sha256 "10e786920be8b74fe765b4e28e2cbe88b4daa9c6886aeabda6fe505990cd8309"
    "ca"
  end
  language "cs" do
    sha256 "b3933f3321a961912b77615deddd4eab2058f7f00a381414e23990141a7e2885"
    "cs"
  end
  language "de" do
    sha256 "815280158fe23b630cf4133a8ca2a8863c77d319dfaa207642e914223ffd2b26"
    "de"
  end
  language "en-CA" do
    sha256 "b6f6445ad8dd5ec1e79333a151ac356dee619c814d456a1cedda8c88dbac417e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4cf0055f28e2c8541023c439324fceada09fac4dcc346703be9b1b4a2d6adbe8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "134f83a66b720086a9cfbdf202f28813c2a43c988ab51613b43b5ee52430e762"
    "en-US"
  end
  language "es" do
    sha256 "d6e79ad5da9a457fa98619b024725143ddaa32180d0e4c490a51cd228428747b"
    "es-ES"
  end
  language "fr" do
    sha256 "879dcc432ccb6da992ab9febdc88cd23ea8465809956bf61d0779b11e46dcb56"
    "fr"
  end
  language "it" do
    sha256 "449ebb6c513b46a1e560fda85acac54127c4f8228c614929620b9de5fd0b3954"
    "it"
  end
  language "ja" do
    sha256 "c3e478f745218c8e7f713855c1eeeadc759693b2f13bb47fa6d871eeb31c7180"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "812dfb781e51659e98bfcac7f9212c43a5d55a0521b2755f241a8fe53bf06cf2"
    "ko"
  end
  language "nl" do
    sha256 "524af25071c4a3ed58c0d2e1bd4ef2ff0454346f4331285a084f3b59e11044a3"
    "nl"
  end
  language "pt-BR" do
    sha256 "c61dac5f7d603529572c3c28de2bbf48fdf8062109378fa34367e7eb1c7a50ed"
    "pt-BR"
  end
  language "ru" do
    sha256 "ae06b69eb3df1b0f555364f0253a0b87856b633db3d441a6013a4addd0f7580f"
    "ru"
  end
  language "uk" do
    sha256 "2b58efda40a15f9fe774286e1f01f7ed8c841b0c55a9575b8f2f8765a07e37f1"
    "uk"
  end
  language "zh-TW" do
    sha256 "828977d9c769cf558dc00756055188296e5c4685e7ec945414591a2817800b35"
    "zh-TW"
  end
  language "zh" do
    sha256 "6f49faabffd7a25520124144eff206ba80d4a7a70cef6df6292e5509e193de61"
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
