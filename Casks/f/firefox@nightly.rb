cask "firefox@nightly" do
  version "141.0a1,2025-06-18-09-32-46"

  language "ca" do
    sha256 "79a1d86e9e3c90ffd73d8f6f57d1be4551f605f8b548c8b5ff74fb0f039e6af3"
    "ca"
  end
  language "cs" do
    sha256 "708c9a3f7dc80b8b69b1757829586714caf3dc2a2d347ab0fe635a48abda9a1b"
    "cs"
  end
  language "de" do
    sha256 "9e00c29723fd317c7f4285c7f8544adf6ce9b2cf8642308b74decb7f44f6f7eb"
    "de"
  end
  language "en-CA" do
    sha256 "ae731bd3b6f14f9a4be417c0e2626111fe3c92546822b4f32572832acf47336c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "39febeb329afdf5bde05e31ae966fb53197807719002f4a9ead517fe67f7d52c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6352dfeb4d70d4b816ed03faead95bc28e77bfde66ab4eea496e21866b9fe6a"
    "en-US"
  end
  language "es" do
    sha256 "fd1298644394e255be6ba34cec849128ad7367b4de6d8a016ebc1ee4112b9914"
    "es-ES"
  end
  language "fr" do
    sha256 "405e3cbe243bd18cdaf17858c5e70c7d587cd8372ee5e147d5abcdf8a4e15dfc"
    "fr"
  end
  language "it" do
    sha256 "66090f7d6fc1e320ba710b7dfeb278b2861bbfa135610f03ab515a48b1b63cf3"
    "it"
  end
  language "ja" do
    sha256 "93e21c50e7b839bedd068abf63ecc8365c81f870ab0b2a43e1e70ad8db051716"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "1d5d94a1a7edb447ffd15fc2139a160d6270454acf1c093ca97f94d647ffeb0f"
    "ko"
  end
  language "nl" do
    sha256 "1edb36bc0fc0b8b7217a4b08e48229816b3e7a18e287b5d6e6ca87d05da2b8b4"
    "nl"
  end
  language "pt-BR" do
    sha256 "5e97db4536a423644c4928cda179ac06ee3715faef3fd341ae1398ebc1277531"
    "pt-BR"
  end
  language "ru" do
    sha256 "cf051fe7acc45f58122b41bc414174dcab7d9d231b93ad74183132b88a057fbe"
    "ru"
  end
  language "uk" do
    sha256 "e79106c5399597cf5212d5c3a606311f48fafab754dd965578ebc4dc01471b73"
    "uk"
  end
  language "zh-TW" do
    sha256 "d49ab0c38dade10a0c852398ae0bd990c73d9300811aa027bdd55c1e5f8ff852"
    "zh-TW"
  end
  language "zh" do
    sha256 "86ae5e22aecfc308525dc489bc06b2ae28dac45fec43e688b926a1c0bf802191"
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
