cask "firefox@developer-edition" do
  version "141.0b5"

  language "ca" do
    sha256 "ccf1a78e4d0ebaa12d5d6e361f197e3d1b96de44a99d6b991fb9f8b30c3d8a59"
    "ca"
  end
  language "cs" do
    sha256 "b3cb9cf4d9598770f0f57e3071a7db15ed9c26c2348ced1983f786965895a094"
    "cs"
  end
  language "de" do
    sha256 "9acbfce18b08f3daf2dae908eef8fcab90f2042dd3879f9db9108ae9fc3dcbd7"
    "de"
  end
  language "en-CA" do
    sha256 "75414f2646ce9d8319966659a92a1e26f6671c974174176ab27054f257647fe1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d9edcfece2eb464a27de920608bd90f1a076feb0525de164754d4f726d2e6852"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87555fec7f851791df0289ef43adc88b5863e8b81dc2ca396327fa8e2d4b799f"
    "en-US"
  end
  language "es" do
    sha256 "62abbb04f1e6f9c239df1849ccdca64178d3506ff52f37de101850c82b777853"
    "es-ES"
  end
  language "fr" do
    sha256 "7c6df690e9d59f455228b7097bca4f95c228fca72803f7312494af6735172530"
    "fr"
  end
  language "it" do
    sha256 "e477085eea1f2588f80de4fd1952d1fd7dbac777eae3a648e20af2029415b0a8"
    "it"
  end
  language "ja" do
    sha256 "9bf2921a7f96e412a2179e4726dee8f8de3819197f13fa5e86a841c1694636b6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "45526b7215c3c6263039c7a309c552f447898043029d97289ff5f3beb1e0ac01"
    "ko"
  end
  language "nl" do
    sha256 "eea3428dbba3a8981816caecc0cad60855abd91365415b544e8ad7d8e649d7c4"
    "nl"
  end
  language "pt-BR" do
    sha256 "c1b14e36df808135d6b410ad1b1aa0ee0f1c77fdee9a50e534d988d3ad2a00dc"
    "pt-BR"
  end
  language "ru" do
    sha256 "622b0e3117e4d5b1778a0e7da581e53249d5bf68197d7b753bca733836bd913d"
    "ru"
  end
  language "uk" do
    sha256 "1cefe9ae0dc1070b8644d689de962035f47493967bd7ffee5774733811d1f673"
    "uk"
  end
  language "zh-TW" do
    sha256 "57565fea662dfead7539bfe0ef49d64cad4d11ead6b8a3df6f6f20551983636c"
    "zh-TW"
  end
  language "zh" do
    sha256 "99afd378c594e2e4269261426d67b5276c1dc8506c9e9113b2304c551f3a787a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

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
