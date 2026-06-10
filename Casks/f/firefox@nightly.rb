cask "firefox@nightly" do
  version "153.0a1,2026-06-09-21-08-30"

  language "ca" do
    sha256 "a2d9705e2c75a57c1828f1fc60876482cfbe6b319bca07dc90cf982641955b41"
    "ca"
  end
  language "cs" do
    sha256 "9499afcc4990258fcd006d472ff7115c8b2528af2434aaf9e6409201cc5bbd52"
    "cs"
  end
  language "de" do
    sha256 "464f1e9d70d0e32acfabfc18ab8d9c0a9d137bed753fd790d7b4fc867398a910"
    "de"
  end
  language "en-CA" do
    sha256 "51fd443573bfcdcb4490a427f5ec898d5ed60deebfa726b0340fd7b91094e587"
    "en-CA"
  end
  language "en-GB" do
    sha256 "99f7c0ece7b5fa5618b2ff97d8e83a453cd12f957e66593ef43d8379f33ffa3f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ae6f9f4554c3aca257b5457a9adee846e312d36e1c643db185add22c6fc4cb1b"
    "en-US"
  end
  language "es" do
    sha256 "8ad767b99ee02b0da886c33c31d17326091d7e38456ac23eac60d7806d75ff34"
    "es-ES"
  end
  language "fr" do
    sha256 "c4822b8e36d037693d18420ecd6ca779f3590309eed4bee6e5f05ac014e8adfe"
    "fr"
  end
  language "it" do
    sha256 "449bd95cc12769e4923a5dc8a99afd80986b61196e23074d03c11798a12ed10f"
    "it"
  end
  language "ja" do
    sha256 "b3acc587c614472914596e145d9f26a9247b851081eb3d18f66331d15e65336b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6ab2e91a91f90ccfe478cccfb485f046828450e6424a211699cce29a0a9d5565"
    "ko"
  end
  language "nl" do
    sha256 "7df3d44df5900fb0e68c0457c5e44bd05e6bcedc9a2e2640bd53549f88bcf23d"
    "nl"
  end
  language "pt-BR" do
    sha256 "9a6e9e9fafc961bc41313ba5b7ad20a81ee0abf728b8677889cf51dd48e04df2"
    "pt-BR"
  end
  language "ru" do
    sha256 "140d81aaeb578e4f6e097890b5a31a0d3a1e2a2aed8aa831412141f9b444a4a2"
    "ru"
  end
  language "uk" do
    sha256 "6543bf003fece0fe48f97b4e7e64eb4b3826da9dd60fd0ddb0daeade2b63d06a"
    "uk"
  end
  language "zh-TW" do
    sha256 "6196781c8451f80661324a3497054f727782693f328acee335787578db3b3e8e"
    "zh-TW"
  end
  language "zh" do
    sha256 "0bd2ff716d314225164302b2fab32bd746923134e0490e0a50f3ceb8c61fa313"
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
