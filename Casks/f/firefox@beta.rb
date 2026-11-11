cask "firefox@beta" do
  version "161.0b2"

  language "cs" do
    sha256 "4653fec730b9dd33f6e176e2c56fe208f26aaa5bb7dbfea0d87704c0ddfec66a"
    "cs"
  end
  language "de" do
    sha256 "b23a5b62f0081a782d26af1a9f872539521a0578a5cf1040f8cc7e6bb118c844"
    "de"
  end
  language "en-CA" do
    sha256 "c7048b416670336a3827f6f8ef6c1d507aed5464866a7e37b894e143deabc807"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fa655fda9a2c68272346896dcb3893e3228eb07056fcf6db90b80c1d2282a0dd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "10ee29a146f4707c504f088b777610d7b51ac5afa3bc7b15a707979c24b1af66"
    "en-US"
  end
  language "es-AR" do
    sha256 "036314bfccb2e12365af96f89b29cb89590229e57ac6bcea19401406dd327b7f"
    "es-AR"
  end
  language "es-CL" do
    sha256 "1f775d0e43e4e69f86673801c7d13d998a644d0c671ea9328bce08746d3883a6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "ab258c2275c989d4d6a51411c4f9841a4fb618e40c445577f3efe8157c48eb49"
    "es-ES"
  end
  language "fi" do
    sha256 "b49337b5eab86a5bda1590d4f8ba6b830af78fe298fcd89eb25529fdb9c24748"
    "fi"
  end
  language "fr" do
    sha256 "9e6539eea1e7a0a150852906f36dee7110e00a06d0fdb4d358f76852b9c7950a"
    "fr"
  end
  language "gl" do
    sha256 "74a563c8b945236d31aa1bd7fd4c3c7eff3d755db3547457452b421b47c0ac34"
    "gl"
  end
  language "in" do
    sha256 "d9b8b515daa5e719a1ebaba5f769483b71c378aea0a88b5238a3d8d68533348d"
    "hi-IN"
  end
  language "it" do
    sha256 "0b716cb37a2b993ee40d12de129b521652173b30ad7a5ac834a44d6db6c56195"
    "it"
  end
  language "ja" do
    sha256 "2e5b2fef2701168cd483a27dd80cd457c81ba1af255692bb2fa72a283f136860"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "425e0b961fc72e13a1a23aa956b4eda4dfd733a7dfac962811c12ec48f080cd1"
    "nl"
  end
  language "pl" do
    sha256 "6efa81d0567b9bcce449edbf6772a2b897007c6fc7ca4edec18f25f8b008394d"
    "pl"
  end
  language "pt-BR" do
    sha256 "c325af81bbd6925f78e04cf42703921b63d077097e940674c3447fb196347328"
    "pt-BR"
  end
  language "pt" do
    sha256 "ce5243cad5b47131dd969eeb31ba09b3adb4d67abb91bf82ff94a2890a23d33a"
    "pt-PT"
  end
  language "ru" do
    sha256 "7ccc73df9d297e92664064b1e32cc90cb131a1ecfc525d98fe54f72cfd76b520"
    "ru"
  end
  language "uk" do
    sha256 "9db81a2be3712dd78a4dd0b83c7e2b77657e04d3687d20b09dd5414011c63786"
    "uk"
  end
  language "zh-TW" do
    sha256 "f249fdabe6509c05d8d61151480799b009e57f7c51d00bf3409db3ab3f342e5b"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd24c85314d45ea3ff51bd31d300c82ed9d6786fc913cc29d58f01255819b89c"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
