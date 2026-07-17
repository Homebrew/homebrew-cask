cask "firefox@nightly" do
  version "154.0a1,2026-07-16-21-36-09"

  language "ca" do
    sha256 "dd4402a5edc02a6f04a4cf80a355ff15ea01aebafe1077ac583ec4c4e67729ec"
    "ca"
  end
  language "cs" do
    sha256 "da693acc37d0b1a2e2f56d535f96ed61278efa8537e2d1987fc4fcba0a6d77aa"
    "cs"
  end
  language "de" do
    sha256 "38d988eed8e90a5440f406747b3830a1f2a8e3f2725642a1867b4b86609c6050"
    "de"
  end
  language "en-CA" do
    sha256 "44c9b9f94791f97a0e2e859dcde95c08f78e28afaeda9dda0de7a5851b19f7de"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a665c45abac2ab19116e710480a4311b3ad9a6c6a7a1279f3a50929b74f2cba7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1317b7406472935bd85406b4adf0faad300272954e574fef95e174192ee54248"
    "en-US"
  end
  language "es" do
    sha256 "9fb0da30823ba68b5c4d59c4ecf45a7db2148c71ba1caead2583d8a0d6da4c79"
    "es-ES"
  end
  language "fr" do
    sha256 "a32127f0f8510d5aa7dae6d72f55b8e14c47ef2894a738dd9857b6c7dacbd823"
    "fr"
  end
  language "it" do
    sha256 "815658f3e88c810d6d1a1939b5066aa0c37594c3bfa760ffba0364a553535ae5"
    "it"
  end
  language "ja" do
    sha256 "ed9f3547d9a8f6ae2169b9318bf96f85c3dba1f2b21f5ca6b8a88e286865b583"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "38c5b8f5654834f3afa03a881634a2bbe9477c1b617fa2ddfdd9fe8dd910f0f6"
    "ko"
  end
  language "nl" do
    sha256 "e010bb3f143e75787e9d627b400cbad84ed80652ad8935a1b11b0b779cbc42e5"
    "nl"
  end
  language "pt-BR" do
    sha256 "ce9222b4725c240d901ab75d8eff0e6a2d10c1a595b83fa6ad4952bf38eb8c04"
    "pt-BR"
  end
  language "ru" do
    sha256 "18a3d9abb3f7d407c553db1aa9ce9383c5cf804c584add75a06e35c0793974e3"
    "ru"
  end
  language "uk" do
    sha256 "a90aae3d2585cf51a2d03c7d670d7e1ef2e160eb7b3fd12a3ceb480b2f047d72"
    "uk"
  end
  language "zh-TW" do
    sha256 "b7971bb8cc859f512a66e483e0c954a77a31cf5c185fd6a722698d8631aff884"
    "zh-TW"
  end
  language "zh" do
    sha256 "7540499570ff0349fa3f79c65e825e926214dcd2a1097c48dedf019ffaa1a0ff"
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
