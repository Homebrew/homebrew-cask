cask "firefox@beta" do
  version "137.0b4"

  language "cs" do
    sha256 "2e03630b634cd73928698fbf513f92a757a4a307388304beb27710f807d95b1a"
    "cs"
  end
  language "de" do
    sha256 "6af1522a9e6a454738c40101d1176363f4af3b41d86b760756d713b0e26965a9"
    "de"
  end
  language "en-CA" do
    sha256 "fe5df6ad61d6c4a6ac1855d6aeddc80d2396835c5baff394fced235e7ade2458"
    "en-CA"
  end
  language "en-GB" do
    sha256 "14129fa90d79928db58bc13f88ddb34b798fe25ca0476938990664b5fbf66ff5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "24cf9eaaa5c6ace9c5cc0ecdbfeaa33f7d7474c19e0c98f985a9b5dab913b1b4"
    "en-US"
  end
  language "es-AR" do
    sha256 "4aa3e6cc23b8d23aa9abf1ac53565bc91dba4dda79dd8baf2f04df071c6c273b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d04d0d58e6a0363d52d822e088474a14efa9ddd68061d0ed5454690a905a7805"
    "es-CL"
  end
  language "es-ES" do
    sha256 "eca680b853c4794dfe377b4eec9dc914c42bbf23ef440bb65d404e50f1b260ef"
    "es-ES"
  end
  language "fi" do
    sha256 "d8133367d317f27be4cdaa3f02c1bec5080b29cb16a092a5f5381437e5cab37f"
    "fi"
  end
  language "fr" do
    sha256 "d1c39188d9b4688af9703f33b74c74c4673c479a37ef7b86f718fabd52dff934"
    "fr"
  end
  language "gl" do
    sha256 "1c2952a8b8c91b5a32b2c1de59355dfe068a64ed62733d65e38695c3d5f3968d"
    "gl"
  end
  language "in" do
    sha256 "cd43663477425e51fa8ae8e1f10671d65ebc772f14988685d77dedb9c93c2e56"
    "hi-IN"
  end
  language "it" do
    sha256 "24b9d24fdb3a97333f9619dafce04e0344f091c236e7e3aaf16b4c1b5650e602"
    "it"
  end
  language "ja" do
    sha256 "0d0674c586445dd1e19bc9ebaabbe8ebe93960eaa16fd5036a43854de104e7ed"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7c3b6c0384054f55fe8ac25b2f1b8fb84b5653ca052ed75b9489283472e3a74e"
    "nl"
  end
  language "pl" do
    sha256 "1e5227d48770bb6f3ff00fd05889e1f50294fc44ccb120f97087be0ea0b4203a"
    "pl"
  end
  language "pt-BR" do
    sha256 "b97db332308f7b1f796b2713691c0dea3af672771bb468287a3964b1dbb7eae1"
    "pt-BR"
  end
  language "pt" do
    sha256 "345229a8299b13ad00ac973ad85a2fff41d7588d7a3336470a3624d939aa6b50"
    "pt-PT"
  end
  language "ru" do
    sha256 "2e15c0cb43317df40e590171d1648fba379d9238c15d41ed841182f913995a32"
    "ru"
  end
  language "uk" do
    sha256 "57b6fcbe521b7c5b9dd6999fe15da36b17574a5ca1aea8922509eeaac66a7d46"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e8c6ac0f95a37658b2e7ca1e0256dabbfeb5dafbbda1dc1cb9be7e7ba3cbf46"
    "zh-TW"
  end
  language "zh" do
    sha256 "6696d3c8e393e4172bb2411434ce84685946f46c7a5a9250be2e2a8d767cf607"
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
