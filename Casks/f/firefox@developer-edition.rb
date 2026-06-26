cask "firefox@developer-edition" do
  version "153.0b5"

  language "ca" do
    sha256 "d703c73f50a6368672869d01c7b971de9c6c303577bc51dd5c7ffcd5a0823d56"
    "ca"
  end
  language "cs" do
    sha256 "cd844961f2ee7281849f340a9ad997f3852a54d66cb8928f5cb89213c07b7a62"
    "cs"
  end
  language "de" do
    sha256 "ab43de3e00b5a7d3acd8faf8d16b9a0f9e5668a0937480e1169428a7d287e0cc"
    "de"
  end
  language "en-CA" do
    sha256 "16e6a3370a4179efc7af19e942f634bab7f6fa7c467eab88d89685168e33d66b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "49611b1b618e39283af3c4390da2b28712e628f7441c3e202565a39e1a02ace4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6b61988a7737f11be5718854cb03d6c9e33f7c8707147be73f9a28fae2474d11"
    "en-US"
  end
  language "es" do
    sha256 "b554380df68bea1098ac842414dea7c1cb4c92a88f2ffc3a583610dc46af29c7"
    "es-ES"
  end
  language "fr" do
    sha256 "25a7860e48ff55ff59dd801ef198b0799124b4cd7a902c791ad51b0e14bb8692"
    "fr"
  end
  language "it" do
    sha256 "0061fa2d5051b2701b8d1551a296e3e661e84c0296b809324f2fe1004fbe7abf"
    "it"
  end
  language "ja" do
    sha256 "d324209ac0cbe6412b22cfa6419db8586dc35c2021b682cf75f433d8bc67dc70"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4813d189cee1876c560a993283033cac62abba591f539176ba18bc9ef61e93ef"
    "ko"
  end
  language "nl" do
    sha256 "9c92372573e20e37c4f1cfc79bb4ea31d460d784edd350a6749e919d418e8a6f"
    "nl"
  end
  language "pt-BR" do
    sha256 "342f75082f3be4e8da56b86e10e742d0df7e802794fb4d60c2cc849e8341baf6"
    "pt-BR"
  end
  language "ru" do
    sha256 "41af49372d6528762289089e3085e4104958340c85af8f7cd595e517a147b970"
    "ru"
  end
  language "uk" do
    sha256 "c3b80c68446730629cec28b273067d4c55a4ac67805556379428bb997dae8390"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b040b70438cdf736097483a9317a794d04055ea7f353ea85b014358a2021a08"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca5b45423144af36725d6d3671ff418be13459d0ac9fdacce00ea26f4560fd91"
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
  depends_on :macos

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
