cask "firefox@beta" do
  version "136.0b5"

  language "cs" do
    sha256 "18af8bff0c0a71b56560097cc22a0a53dd30a47e8ccfb5e354f2f1035865aa71"
    "cs"
  end
  language "de" do
    sha256 "9eec4f2a683ce9887adc761396c49172b56e6827f47911050dba7c403dc528f2"
    "de"
  end
  language "en-CA" do
    sha256 "c3c6e8db67027739e6a7e44a332393d45ee7707b40d71196fcb50434e13fae30"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5d6156eaf00a19a5a52e0921db49d323b6bf691c7be37e1f782c0e81bf9e00c5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b2aa9cda0500e503200cb4006b532320790fe217106ca3d82da2a9332c3a3860"
    "en-US"
  end
  language "es-AR" do
    sha256 "0fc5a99c9a66f3793f7bb8d6b269d24df3b96d1843c927f0e626d89453f724eb"
    "es-AR"
  end
  language "es-CL" do
    sha256 "fef69cbbac0c71faa91b29d01020a756ca1c09fcda5bea3de8dd2f19da72e2fe"
    "es-CL"
  end
  language "es-ES" do
    sha256 "51b57e6ceae007851274ac714ea208afe999bc31031dc3afe07fa4b7377797ef"
    "es-ES"
  end
  language "fi" do
    sha256 "e49aac99d4a42d3e5c320f9cd24d5101ad988832948487bf615674e2db439011"
    "fi"
  end
  language "fr" do
    sha256 "94d8892e22a34a7dff289b916a3231308adb23b78d2bf6abbcdc00e1551b5d98"
    "fr"
  end
  language "gl" do
    sha256 "ece1ce658d06a922dd38c02260b420ba2fbeea1a504a06e7f4e9479f2d503687"
    "gl"
  end
  language "in" do
    sha256 "d9db65c3e6cd893f99e027315498c807b282f49f19a5727f5b6b6f168d41c023"
    "hi-IN"
  end
  language "it" do
    sha256 "e4b57dd981d920a1b017d32634721bed5daa2c3d41cfb6e3c4ec208f286cf92e"
    "it"
  end
  language "ja" do
    sha256 "6ac1bb02c5e725d446b073924d0ad170bd6cecadf069d0d339be1c775c79b5e2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "01d36dce03e44ffb30a58faba36e8a86aa2f6eda4e424cc66b5379a2bc229a3f"
    "nl"
  end
  language "pl" do
    sha256 "f2d38a682000caf1bb7ae597e6296ed11fb0b9b269e49439e3fca4e8924760f5"
    "pl"
  end
  language "pt-BR" do
    sha256 "9273a70d6659ee5bc633b0c90c090ae07183138c5b34f9205d04ae569459230d"
    "pt-BR"
  end
  language "pt" do
    sha256 "dac3d0247bef4f6002e8d6f3a17702c7e388273a8169aa57abb8f32a4894b7aa"
    "pt-PT"
  end
  language "ru" do
    sha256 "b09a268ea18dc08b73d22361b1691664452638746c186081c3460131f9ed87d4"
    "ru"
  end
  language "uk" do
    sha256 "6dacfcd43a68e849e0fe57443ffa372b45fadd09b2b074aea17642650a651e45"
    "uk"
  end
  language "zh-TW" do
    sha256 "bb04a54a7726b37e12822db3b2b0da6a3057b1259cb813205188a6f274aab3de"
    "zh-TW"
  end
  language "zh" do
    sha256 "f6a3d46b3e53032c4014c9e7e4d9483c66baee4f08da341a67b47432ed578c64"
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
