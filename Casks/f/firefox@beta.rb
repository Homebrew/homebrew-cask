cask "firefox@beta" do
  version "135.0b8"

  language "cs" do
    sha256 "173e8e3b6999ed5d6e4c04d5df25d7ba9881e8a79c8f821ddbd21d338e0a0045"
    "cs"
  end
  language "de" do
    sha256 "2a23849c6b61373f6f382a71e0f63f4702ca6750ce1bb47a820017045a8f090e"
    "de"
  end
  language "en-CA" do
    sha256 "96225fb15506788e686b3adb2252ee70a126b25624adddef3ae0222e0a5427c6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fa6050986c269ea261599f4fe51e4214dbac3253d48198bcb34cf297981b5716"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8f2e247cfa49e118b02e3990396e841ba475807e16a488efb4f805fefa52fdee"
    "en-US"
  end
  language "es-AR" do
    sha256 "08ea734edb6c1b36f78063f0101df06f083f6c8b739073d8a4041f5785bfe2a0"
    "es-AR"
  end
  language "es-CL" do
    sha256 "5fb59c0ada7658ae5ad545bf9100233fd984473983bb11baaaa60e91f6942e7c"
    "es-CL"
  end
  language "es-ES" do
    sha256 "41d1726f0818d289ebf578bf18449578133066258bf65b977471fab80cc2df9f"
    "es-ES"
  end
  language "fi" do
    sha256 "b8f092ee3516cd16ef25a9ea523a1fcc38507bc614e669a46f4da4d67285a12a"
    "fi"
  end
  language "fr" do
    sha256 "9eb742e49304e798afbdb302991e5acd51ca625369fa13ad378d9ef6fc457b2a"
    "fr"
  end
  language "gl" do
    sha256 "9f96b1fb2aa72652dcb8c4b875e330c3c45ba776b6aa9c37fba460ad68a62a5c"
    "gl"
  end
  language "in" do
    sha256 "6a10e5405e01a6b6295f7701913057846e62d8dcbf72b7934d098cd5ecff5a43"
    "hi-IN"
  end
  language "it" do
    sha256 "4bf7f3048b7cd86e65ee02bfcdd719f6d120bad97221d08b29395b2040944c03"
    "it"
  end
  language "ja" do
    sha256 "4942504b8bdd832797635c32d4d65f450ab09289db38e755861619f5fdcb9bb7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "73e74d6c2bbcf32d87e8b5ef715b8e259abfd364f1b2b2fb34bd51a5e6c8cb8d"
    "nl"
  end
  language "pl" do
    sha256 "dfaebb5695f27ff86d52577c4d2c3920e3799cd38a0256c8062b307654eb70cd"
    "pl"
  end
  language "pt-BR" do
    sha256 "e7891886a4862cc01ef3f303cbc32d0934460824ee8397d1750064875b710d55"
    "pt-BR"
  end
  language "pt" do
    sha256 "8bb55717b3e0b66b2f692d45b2239b84445a0693adb855aaabca2aaa7e561023"
    "pt-PT"
  end
  language "ru" do
    sha256 "84f2aa17529c649ca3b8d7dba2b7ed6e19fdf915cea66a695bd708f09826d49d"
    "ru"
  end
  language "uk" do
    sha256 "7a476ef18ac9ecf811f8482b9d2b02be62c335ec637aefb9656e6ddfdc049259"
    "uk"
  end
  language "zh-TW" do
    sha256 "dd68338700112b0b28d237a8b8f5385730a0b7d995524788ad82932fb603e40d"
    "zh-TW"
  end
  language "zh" do
    sha256 "cd128e35d58ae1bb382fd5071bcf34d71a6eaadeb891189486c23a92a08b3661"
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
