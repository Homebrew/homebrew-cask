cask "firefox@developer-edition" do
  version "130.0b8"

  language "ca" do
    sha256 "f4681bcdf0e72b4f3264468a2e367fcb560f5f6fa33a556a6bb70b35fe5d8e42"
    "ca"
  end
  language "cs" do
    sha256 "2f785d42aaeefd7b3dff721a9caabb8b6db71e5a1e595cbcec678b711d752610"
    "cs"
  end
  language "de" do
    sha256 "bb7274d1647d968316061bc9354c059c8f412ee1bed8e1e2a0c411ba2ec9f8ab"
    "de"
  end
  language "en-CA" do
    sha256 "1883e6b38a4b4adbd44a146dddf7e864bf5d3d14a98cbd0955cfa76f8e8eaa65"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dc47a41224184770cceca32399e72963d7c9505e0dd38ad234b8b00c2a1c402d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5c56f0374d58268bcb63d2f2bfd0e7cac4a2c3a1f52e7ec09a8b8703f3f4fa94"
    "en-US"
  end
  language "es" do
    sha256 "be9bfa459579c6ae7e72cece59ef72f996748f0d3514f2e919bbcb5a684d7084"
    "es-ES"
  end
  language "fr" do
    sha256 "9d46118cf2b27c1118a6aac1d60df70f57c6d225353cb8877e944cf4a38f57cf"
    "fr"
  end
  language "it" do
    sha256 "d529cb8f2a9f24780071d4f80f25b00932c1963730e852e507af35147e06a10f"
    "it"
  end
  language "nl" do
    sha256 "fbc9fe218ddaccfe6889279c7ed51eb8cd690fcb6f525c31f4bae35aa8193d3a"
    "nl"
  end
  language "ja" do
    sha256 "7ec214e1a51d628fe2b12331ae88ee771e76d5872f653739309b59f3fee3e3c7"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "b9bd8708881b7739f8ee823ffe35d05f22b79f31d340e4917fa4faec1c56f64a"
    "pt-BR"
  end
  language "ko" do
    sha256 "5c2e780dd6c166a3418140fa7a496cb62096ede341d25cc17019e71ba98e6979"
    "ko"
  end
  language "ru" do
    sha256 "0690a5bf62f9cf058e907f7c2dc9454e56f62fcea09227a0a997ce8547654a8a"
    "ru"
  end
  language "uk" do
    sha256 "8ea3b4d4e501730bc774e69c897053afe6b4c0fefe35fe4f4aa9e5bcb9581a9a"
    "uk"
  end
  language "zh-TW" do
    sha256 "16cf3bab08fc8f04c43371829e5ad7e1b2580bdab09c6034f58ec195a99c5f02"
    "zh-TW"
  end
  language "zh" do
    sha256 "e799784885c39f1d481d91e483e032f8dd57473d65bd749bf4666c231bfb9f46"
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
