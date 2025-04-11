cask "firefox@developer-edition" do
  version "138.0b6"

  language "ca" do
    sha256 "cc8c0449836c54c1951a0d374b48c2e2b6018be439bad489619871efdf95bb4e"
    "ca"
  end
  language "cs" do
    sha256 "6a1499ed3533b0bcaccbad5b5e545904eda06427d22101b6d7baddc2c78029ce"
    "cs"
  end
  language "de" do
    sha256 "fa1225eaebe4104bb1967ab2e67fcb8445b5cb3721fa39c1371ab705b0b3e058"
    "de"
  end
  language "en-CA" do
    sha256 "2b910884cce2b4d649465847f8f2bacd76449136d68df0b33a45a42033e3278d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1ebc29d5a0a248f91d7aad40c4272cbc74aee6fe6b333b56c01c4d021150a366"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a51d3622a234b679f0a0513cacb6edf2367f5c666d673973dca7193f52475f93"
    "en-US"
  end
  language "es" do
    sha256 "202004579c888c14ca6f365e0cbd179cbb275a8a5eb12717a86b3e2a3a0b1218"
    "es-ES"
  end
  language "fr" do
    sha256 "585390081eec270f6fdf69569db9f698875d1cd471c7d79851fcfef30237a38d"
    "fr"
  end
  language "it" do
    sha256 "ad647fee40ad0315248adc8f5c1cc70425d20890b1d571c43025121091f1477c"
    "it"
  end
  language "ja" do
    sha256 "cc3b299744c59d1328ec97f0a71fead6f2920c1662f0c062fd12415688a8a0dc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a058f2f19f8c55054b95b4dbafb0b4aa53b687f92cf88b2ab705e2bd738728f5"
    "ko"
  end
  language "nl" do
    sha256 "91d2915f6cbddccb3879b722299cc665cf1a3eb20fa70002bd7a4a9fddb51e6c"
    "nl"
  end
  language "pt-BR" do
    sha256 "8a45ee3b32518e99040ccd97df7e756f83576f732b39657a09b6db2e231fbc5e"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ee228a9fac82d7af401d890f0a5f89a7bfd6fc8c7d0d64954bb591e2215ea53"
    "ru"
  end
  language "uk" do
    sha256 "977518240223c762b80b48246304b7fed642d90ace14bc07582efd0657c68937"
    "uk"
  end
  language "zh-TW" do
    sha256 "370e423af57b6e5c1e67902fef944564648ce54265dddeda99fa233fd77e379b"
    "zh-TW"
  end
  language "zh" do
    sha256 "b3cfd8b19b3ed85212b94fd26e49c8dd8cdfe0d9eac6bf6e1421e9f291f8f05b"
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
