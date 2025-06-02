cask "firefox@beta" do
  version "140.0b4"

  language "cs" do
    sha256 "df4e1c59384368749ade8227c196346925c49673d9460b25b0b2f63f7b5d77c5"
    "cs"
  end
  language "de" do
    sha256 "7b18cf594122f970a0e54bd404c92a509134003a48dc238669b93e22207b2301"
    "de"
  end
  language "en-CA" do
    sha256 "6375d180427113749371732054557dcc40e7d90e7a0207bcdb9306468a211021"
    "en-CA"
  end
  language "en-GB" do
    sha256 "185dc01cd6183516cab7f175982bc0de5ece04605077c2775a1f670e5360172e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dce036c33d4749910cc2d87ce4c6786f7538a83dfe22f1ae1f9bfd17d4a23523"
    "en-US"
  end
  language "es-AR" do
    sha256 "f0ab0790375fb20a4b99ee6fd99af0191442ef8d251711bed2796f4dd6fd8caf"
    "es-AR"
  end
  language "es-CL" do
    sha256 "26154d26c371d0de08f5e5bef5661972b6b13c4e94e285d51cf776fc77c4300e"
    "es-CL"
  end
  language "es-ES" do
    sha256 "921969d77ee23e539e68a079742bfca9bd0a749af53befc3b42849ee9abf0b34"
    "es-ES"
  end
  language "fi" do
    sha256 "a70fdfb3abb400bf51d186d8c4a609f25ee0da2d29d9c26f93a1cdfc7b755c47"
    "fi"
  end
  language "fr" do
    sha256 "f7f6396a4a0a892db2e566f35c41d2b327956d4a7afa137c559c06a237f2e040"
    "fr"
  end
  language "gl" do
    sha256 "3625754df8b228d7f8b51bbafdddc6648c4b7b78d16d287fd6c648bde449e899"
    "gl"
  end
  language "in" do
    sha256 "cbdfb08d1cde45a370bde21191eb901c1b7a9e08bcf29c94fbe728182a8c2992"
    "hi-IN"
  end
  language "it" do
    sha256 "5e345715eba89bc244e16c73dacc522a3b83e9ec3f99ae072945b18cfa904f5a"
    "it"
  end
  language "ja" do
    sha256 "308d2c19609ed3874fe8cd3619602d606356ed55c4ca0f1fca1dede932c19e79"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f908f97357b129f8ddd56da82b17da273dabab6fec022823bea2976645331860"
    "nl"
  end
  language "pl" do
    sha256 "cc14ee424433ab322b17058ea8719ba9368ff5e7a91d2f691a92dc1d13964f11"
    "pl"
  end
  language "pt-BR" do
    sha256 "20db9ade31f00b3aae5fcb9fe71d63c31d31520f31a0e87644b34cc0a8c928bb"
    "pt-BR"
  end
  language "pt" do
    sha256 "15d5a45a13311a67f86fb9814e1ac49f5090933f1110ca0ccc1f5bf51d4312e9"
    "pt-PT"
  end
  language "ru" do
    sha256 "f85319ac38fb8be330bb80e6b1e5fc781d8aad2f8a6a300e1c85916f0baf7c62"
    "ru"
  end
  language "uk" do
    sha256 "02faddd1b0b5b79211c36438a2ce47238231c11dcf675d65974b8478f7f16818"
    "uk"
  end
  language "zh-TW" do
    sha256 "a1e2692eb4a0a728b051a9f6c3998b7f87b0e118133fb94b069f582c0eb463e9"
    "zh-TW"
  end
  language "zh" do
    sha256 "8ab9a64b3733fd391678c47a2307d44205a9ae67aad5895aa11ceb73eeccf6ff"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on macos: ">= :catalina"

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
