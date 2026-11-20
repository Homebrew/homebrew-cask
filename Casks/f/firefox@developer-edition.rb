cask "firefox@developer-edition" do
  version "161.0b5"

  language "ca" do
    sha256 "bda6d6ba35462187aea0a2fe7cb1101dfd3fb1dcdff1ffec69072190e7808b33"
    "ca"
  end
  language "cs" do
    sha256 "a43d5aa936b7e51e3828a49a86be17ed3d04333d9e9fccb3b8beb32efa84b05d"
    "cs"
  end
  language "de" do
    sha256 "9a991a790f1152757592d494d6f5e49c3f7eb6cc5be117deb961df12f6e3e51c"
    "de"
  end
  language "en-CA" do
    sha256 "a2b1257debc792927c09162962ce537c3344d86204da6231f9fe713193623f15"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9a6f5a4075840a5371e8f7e294a435ffe29d2af26e768ceddb634eb2f104ae15"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5aeb726e8f2656959484402b17ea320c89f2e75866b24fd051791195a122d5be"
    "en-US"
  end
  language "es" do
    sha256 "4d392fd5be5f51a8691814a598bce4c27a866d70968de057d20ebf1352d28d81"
    "es-ES"
  end
  language "fr" do
    sha256 "de31007e0fcf8bfaf605b36717dcab3b6f2779237ab2fe9583aa2be30fd23469"
    "fr"
  end
  language "it" do
    sha256 "664eab42ae538462631fb8329e22377a385e0401d928083ac5be4955d657dfea"
    "it"
  end
  language "ja" do
    sha256 "f5a9447a77bb133a4063fb7874dc00092e3b01e7c432cb793d679a643ec8e659"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b048523cc0cfaf11f4e537dce42d38ee38cc4512fc7ba19a4798a96d17e27c55"
    "ko"
  end
  language "nl" do
    sha256 "9679150df94d0e785e2011fd4b0e31ad62e5cc395cbd8503198157a11338f47a"
    "nl"
  end
  language "pt-BR" do
    sha256 "22cf75a99c98fd4771f9f02973adde3971b3e421ac10b743652c2fe35b0ba46b"
    "pt-BR"
  end
  language "ru" do
    sha256 "f2b0c33ea8524c4d18971f2e3eff35e84a53484d495c450f6be14d2dc92085c2"
    "ru"
  end
  language "uk" do
    sha256 "5c92c8cd643da8acab8a31cf417b1a89071fddcd9dad53e8955e1e86972a6d55"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa3dd9ad89eb5eba2d1ba6e736832758d6d5e61f305a4756a2cf46d12339411f"
    "zh-TW"
  end
  language "zh" do
    sha256 "3d94ca244e5162b096e09e3b8e6cd52b8a344e8cac10a99e817dec63819648b3"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
