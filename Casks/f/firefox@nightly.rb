cask "firefox@nightly" do
  version "146.0a1,2025-10-27-09-22-57"

  language "ca" do
    sha256 "82e2ce4b632df498118ee23d2b116038f069c546b196c0a427d5c48f842c14b2"
    "ca"
  end
  language "cs" do
    sha256 "173699b1b9e7e1493754d04f700e02b87b8e3f701e1c9a99496507a0ca0a18a5"
    "cs"
  end
  language "de" do
    sha256 "2dd7d359097f8a567486e490ce19f26906f022d7b7988c3e0ceddb16a92fc6c6"
    "de"
  end
  language "en-CA" do
    sha256 "a06c4e19080fab6325db74be38c6e23559f3e7b353523d8ca29d4fa7fe8390ab"
    "en-CA"
  end
  language "en-GB" do
    sha256 "72ace9b5bc948c73f722ce948cc94dedf1bd4583fd4b07b37d38093225f8cd23"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eb8efe0e2f94be61233ee64292d460d0349a193603a7a341cdbe2923f4982843"
    "en-US"
  end
  language "es" do
    sha256 "d34d638a497852d175cf5c98e0214a2b134844cf6feb1f6d0ce5c52ab920abe6"
    "es-ES"
  end
  language "fr" do
    sha256 "604d46f73d2f6d87faf86e4c29c9aa8e26bce1f9e83288ee8590a52ed8101cf3"
    "fr"
  end
  language "it" do
    sha256 "6c727a0e6099ec78c02499871175dad6b62a2b02dc1001017e4f24e5ffd24f83"
    "it"
  end
  language "ja" do
    sha256 "69e18f32bb127a0315401067aac5b0597020ae8b81aee657748b27db9766e752"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "978183e516ed0fa3776ba6e3cbff41bebc53da06673cc18c9b7c90815d404aa1"
    "ko"
  end
  language "nl" do
    sha256 "286754f6ee608ccf896266af55550471a698f9686e99b27b76b38231b0eca664"
    "nl"
  end
  language "pt-BR" do
    sha256 "91c32ec49b9ac95add64659521167fa624a997acb3ad6133dcb5840021f42a86"
    "pt-BR"
  end
  language "ru" do
    sha256 "f09d05410e4bff65a30776aaee44867c615c18cf879bc8e555d8d4c1a70ad93a"
    "ru"
  end
  language "uk" do
    sha256 "28effa3b841deb878ba361799c72b91410eb43f45e3d503cb1d5aa0a903c7833"
    "uk"
  end
  language "zh-TW" do
    sha256 "5ee496f8d1ef761011906671b64256752b0587280733fd5fef6e81eb3f182338"
    "zh-TW"
  end
  language "zh" do
    sha256 "c58ddb342f0a76d58eb707ec5386d1b5cef5ecdbe7bc5eb7dc76e6fbdfca1c37"
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
