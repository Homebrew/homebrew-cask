cask "firefox@beta" do
  version "154.0b5"

  language "cs" do
    sha256 "136e9767ed76f65e0b25fefbd8aeb37588445c4a164fbca03ad9d72a415a4adc"
    "cs"
  end
  language "de" do
    sha256 "4b29568021addc595797281b6d256ee9188380ea0a8cec4097d78354d76308ef"
    "de"
  end
  language "en-CA" do
    sha256 "2e1b869edcce8eeb23fb199d11b01589e130392fe9a244b9c58d47d434b78c22"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aba6bf35e5b9ce7cd79d0ad19f6654912e03c1f4753f9b06ba46b0ae129cb598"
    "en-GB"
  end
  language "en", default: true do
    sha256 "100d718aed667c87af912adef24ef2b30d0e9525e2f8eec5f757bd5fa6aa673d"
    "en-US"
  end
  language "es-AR" do
    sha256 "a0ccc4c4a27c02dac4dd8c4616e1f213a01a46561959f4605548ea9c24b11919"
    "es-AR"
  end
  language "es-CL" do
    sha256 "536d3dd3a767b898a130f56bb371c4e04bc961b721ac257e31cc246d5c7aa763"
    "es-CL"
  end
  language "es-ES" do
    sha256 "4469b86e31aeac9f3b18a0a80cd634e881cce22080d3f4d0c6dfde4d21e80979"
    "es-ES"
  end
  language "fi" do
    sha256 "dddfdfbaa78a6f3f16470255a6d2965166c5a8fd1c5c824fb710bf6e7c2935a4"
    "fi"
  end
  language "fr" do
    sha256 "cee7afa8462b3cf9070ecc0cc90f098f7b80ade8968cc20aadd21bd0cc303cfc"
    "fr"
  end
  language "gl" do
    sha256 "32b452d4ac14cc0e8b7bee01f8d70aa77aec2676104ddf4456bb23a7d56768b4"
    "gl"
  end
  language "in" do
    sha256 "256c1a897a5d5633141faac5afb12eaae1fbc6e3587ca7ce79ace22c93f08f3d"
    "hi-IN"
  end
  language "it" do
    sha256 "e35c231df374f94a53585d38886c0c5fc2021b8d1350086b17de4dd420ac7c84"
    "it"
  end
  language "ja" do
    sha256 "0fe8ffa6207e2536580f246b0b00da734b2409af6c9179f9ede49d5565401e7d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "476f42a365e1230c9f75d462ae62856607c1b75e3490bb409e3b826cb7142372"
    "nl"
  end
  language "pl" do
    sha256 "c90455e38d04ad89ecbd9498e24f9b47e62ebc70cf84d5c0b6d419c9b78a543a"
    "pl"
  end
  language "pt-BR" do
    sha256 "09b455a24c11e53e8e782e8893f27302b97dd9dccb26a35f875b452fbe8e6c0a"
    "pt-BR"
  end
  language "pt" do
    sha256 "17b90405649e3be37786156ab82b2aa704b74f2e0e1dcb3d1f74647ff50b3e17"
    "pt-PT"
  end
  language "ru" do
    sha256 "8368dc6bb62cfc8263ddc15ced82fc2254b5011852902446ad1a49700e89ecbd"
    "ru"
  end
  language "uk" do
    sha256 "6bb4f9d4e20121d4162987bc0202ac6325be27c0986c735710898e6d864493b8"
    "uk"
  end
  language "zh-TW" do
    sha256 "3a39938cb2f374d362c5348530a35e06377abedd4e0d2e1cfe4da3d7daca962d"
    "zh-TW"
  end
  language "zh" do
    sha256 "530b87e6cecfe5adce430493801863ceb40815c7c9f718f5701b17bc3aa6f6f4"
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
