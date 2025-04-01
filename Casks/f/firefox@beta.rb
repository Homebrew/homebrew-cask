cask "firefox@beta" do
  version "138.0b1"

  language "cs" do
    sha256 "fbcfae624a4494ae5b429681fc7700551673da94874d05232dcaefd46bd1eed4"
    "cs"
  end
  language "de" do
    sha256 "b96b6722416d1ad07d1a5b1a179ad8cd68e0b27699adb6038110687154d7ccc7"
    "de"
  end
  language "en-CA" do
    sha256 "199106c1590dcb23e90f2541637b3d29f3a58e530687bfa26cd0842c803dd591"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c899c4b509c287a04c14e09abc8bdbdfa3d5d814c4814affbad92108a9324951"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ed7eb980a71333c1f3936510d85a45ca7d04289a05ba1e845e0335738a6489ae"
    "en-US"
  end
  language "es-AR" do
    sha256 "da4c3f6b8c4aec58bc5ef3dacae00852faab13867e1cc8ffa1c401e4a26a6020"
    "es-AR"
  end
  language "es-CL" do
    sha256 "c2f3c030ff86b56d165f00417770939d065c6b88999571614d6855efc6c2c0c1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "37aecd9b76a729a9888326d6cbe17011ad01b72e8c1cda992e7592a8669b386f"
    "es-ES"
  end
  language "fi" do
    sha256 "aba7ff15b37f1dd9f850fd7be6b814e17e3149c3336788332beea695a4e8d8e6"
    "fi"
  end
  language "fr" do
    sha256 "cbbdffd48b435040deeb5580ce7ed008ef83de25ce8d5dd87cc5804c4ee5adcf"
    "fr"
  end
  language "gl" do
    sha256 "3988e235ed39b21d7bdfc7ceb4c22a3a058fa568291f7bcdcd1710d6bfe71865"
    "gl"
  end
  language "in" do
    sha256 "583b68fcfd0c8c46d287652924cfa49f8fa0fadedc259ead8a9a51fa646f0067"
    "hi-IN"
  end
  language "it" do
    sha256 "996c1a6bc799e43c24f016ba4edbbc860dcecc1c8bd65a77ea9b0dab31ee3c22"
    "it"
  end
  language "ja" do
    sha256 "a63402600ae22c84bb24cfd8ec4309d2dfedf093928f84372c71b04965d2e49b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2cc0ca929de78a2de1411e3771b114f173c6a53ca548febbd7dc21f171057bb2"
    "nl"
  end
  language "pl" do
    sha256 "405a51211638a09e4b1cf9543a60d2bd1a03d57a470ba4c00ad3484e92742b8c"
    "pl"
  end
  language "pt-BR" do
    sha256 "640144d9cbd0741fd348b0a6e030ac01da71643701aeea22b1861344e97900fd"
    "pt-BR"
  end
  language "pt" do
    sha256 "84d35addfc81bc3ed2cc4701ef7efc3d4d4bbb98fe2a8eedacd1c1a31a9aa246"
    "pt-PT"
  end
  language "ru" do
    sha256 "49e55609c0755ac9d7eab1ceccd4d2f8d9b479c4e0e0a1bb18a9112a9a5bc9f4"
    "ru"
  end
  language "uk" do
    sha256 "056c8ef8f4eabcf70d4bc13f6a6b93866729ea9bfaa3391f6f8323c8c36d8f30"
    "uk"
  end
  language "zh-TW" do
    sha256 "db675cd028ff4d3ef977049f82a337a4e9cf5d71434dfea474aaec331a5093d9"
    "zh-TW"
  end
  language "zh" do
    sha256 "3d55ff631842d57b269dc39e715e7c7d343d0d57e194e66671486d0345ac0357"
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
