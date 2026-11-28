cask "firefox@nightly" do
  version "163.0a1,2026-11-28-08-32-09"

  language "ca" do
    sha256 "2580cc0ca3adc7422f9d4fdddedb6a496acf116aac53ddb07b9fcc25bbd8ac9a"
    "ca"
  end
  language "cs" do
    sha256 "a94d33081851d065babd792312feb05b036278297a69769a3945d0cd4e9ccbc7"
    "cs"
  end
  language "de" do
    sha256 "1530f7606d7a915970e9a0b5a306fb61f547c973c13a028bb17667aa1da2d6cc"
    "de"
  end
  language "en-CA" do
    sha256 "6987a4661c7521744229a7c58f34ef1a5626a463239c1a10b062c675809a9d7d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "58491d3b9e364e5d3ee6dc65120a548bd5aa9ef882c9379f45d68c48953861f7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e1000ff3de1d9ac41a554f9ccd2780ac59e816f9f9ec50d875513472cd9e2ee7"
    "en-US"
  end
  language "es" do
    sha256 "1a375bdd5fc3fd8d77dc9f741aa5128b3967877ed2907346963cbbc497e96a2c"
    "es-ES"
  end
  language "fr" do
    sha256 "8305b50ac2cb70ff79a54fcb3f0a82cff32510e8c42afa04f3502111cc839e4b"
    "fr"
  end
  language "it" do
    sha256 "d34681df08618b1a96b0499ae5dd10b892ecd1417185b574fe665e8dba3acf6a"
    "it"
  end
  language "ja" do
    sha256 "71770548f6e3084b80e63278cf315c9f239c1badb62e350e8e5a01a61e875ae5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0c6573bf9e73723dab831218b71ede52c7da1c0326c1cebcf315a8d4b1860a67"
    "ko"
  end
  language "nl" do
    sha256 "3ecd96f50c26efb822e462b2045a4ac1b4079a1394696a6673de0ca789ee5b4e"
    "nl"
  end
  language "pt-BR" do
    sha256 "8ac924daeca3c7dff3852fb71820f78468f0baed0cdd7a9bef95cbf3ac73bb1e"
    "pt-BR"
  end
  language "ru" do
    sha256 "829d6dcd409afa0fd6a902661162edcf739fb39c457b02321d72eeedd653b88d"
    "ru"
  end
  language "uk" do
    sha256 "939d7caa678fe5143664cd64c1a3561ffc311eb8ee6f4180a664747cfc46a65c"
    "uk"
  end
  language "zh-TW" do
    sha256 "22e8a0fa28213323f8238f92bcea41ef223bb946b25feb90b481219614d8684c"
    "zh-TW"
  end
  language "zh" do
    sha256 "abf52e9096ca2173dd28870ceb92e4796c59054eb6e8e9d15181f1fadd7d04ce"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
