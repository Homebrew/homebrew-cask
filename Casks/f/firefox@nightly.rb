cask "firefox@nightly" do
  version "140.0a1,2025-05-16-16-53-57"

  language "ca" do
    sha256 "fc9133d4711daa7c32bd7e5178df396f09c92e89faa8c18f2226677bf6a5377e"
    "ca"
  end
  language "cs" do
    sha256 "a95ef766f5c02fa52dc6d405998a9cb52ae6b70b8329c5c72ad2f986fb6c4185"
    "cs"
  end
  language "de" do
    sha256 "454bbd669439b1ae0930c1524602c0fc2eb02d8efc61cf1e14ae11f4b82dd29e"
    "de"
  end
  language "en-CA" do
    sha256 "8fcc7831cae32414ca893c96feac954cc9ef33b5220c2fb99a8445aa253a1b3a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d55e46c2a7c9e4fd23d34cb0ac3c7b81133bcc8710feb6a5e9b0ee94cdd21789"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6cc7652ade57f84d90311971a506409f54920efcd27daa9ead144ae91ecc4943"
    "en-US"
  end
  language "es" do
    sha256 "2c05dc459a328d5721569a8813707c52e2702bb61fb90586a49400e4a23d3aa8"
    "es-ES"
  end
  language "fr" do
    sha256 "000883b5a10f789d53c7bb6ef309b3ad45bfde2a46525a9ed60967ef5eddd6e4"
    "fr"
  end
  language "it" do
    sha256 "bfda6b651f7e6d8a7c733f4349c363feff1ede4980b81a31cd22e0653295de96"
    "it"
  end
  language "ja" do
    sha256 "1da29fa15a6e111fb750cf07782d93481e6bf7157dfe3d5fc6141a12ee2904f1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dceafd60f0995e80b5cb82517e9406d6703cc9d0129334df652653a03d6cf8cc"
    "ko"
  end
  language "nl" do
    sha256 "0c4c3c9410aa6626bcfc260d6d68edc6d6c4822cfa994744c63533839970aab0"
    "nl"
  end
  language "pt-BR" do
    sha256 "118f4ff2fdbdcbfd4c9d729395284a8783f7c6ee191558cbe7136970e1e56423"
    "pt-BR"
  end
  language "ru" do
    sha256 "5373b1e2772f89310e7f442fe0da952f811b0b4eb8059f4614d03a7968b15323"
    "ru"
  end
  language "uk" do
    sha256 "e8f6f84abeb5e1155c4c34ce30997a0197ca12925bab106c92cf53fadf1d0cf0"
    "uk"
  end
  language "zh-TW" do
    sha256 "a29d50a0b4f5395046590f8bc7fe31e26c647c435851d5875c68e1c9beb8ccc5"
    "zh-TW"
  end
  language "zh" do
    sha256 "e69f1b14cb24e54af83b28088e8fbdfc3ef570750fe3226dee1d97a21d865c0e"
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
