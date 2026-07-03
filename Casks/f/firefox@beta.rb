cask "firefox@beta" do
  version "153.0b8"

  language "cs" do
    sha256 "eb2f4f4defa7bf6c4afb363d44f9dad93862b0281f289e0c597f1cf0abbf67bf"
    "cs"
  end
  language "de" do
    sha256 "8b09078ee488ae7671c8c238c2c0d2442f477b6b509949a48c209693bdc7a335"
    "de"
  end
  language "en-CA" do
    sha256 "0ecb79a768be8449532e5f581f0d744232a10018b85a3824c351a4e200f32cad"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7d934264fe081d1bab21954ae64d43a50aa6460dce8ec5a72b497b1df7d9c1c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0b3f0659f5f67f9779a471a659366557a4b0b539ffac75ba9812a6458eb3460d"
    "en-US"
  end
  language "es-AR" do
    sha256 "b1fdf6325b070a2277341170e20fd3b9172eeac42cba70c514d2b3445a38817d"
    "es-AR"
  end
  language "es-CL" do
    sha256 "011f532f4abf4892f572da14f4293e289a1d8113925d2dd9c74a2cfc1a3e6133"
    "es-CL"
  end
  language "es-ES" do
    sha256 "52fa7cd7f79ed502f82df1825d5e4aedd077fb498e2deb0a50e366bc36049946"
    "es-ES"
  end
  language "fi" do
    sha256 "379003e580b817abeb278767e64acf4f7c19ad3ea9b8c178a9888b2d9ef6ef5a"
    "fi"
  end
  language "fr" do
    sha256 "b72b4d7c76610a8bb3f4ff10bb7f3961aa09c955ef5dae745e2f57d328321e8e"
    "fr"
  end
  language "gl" do
    sha256 "073080cc48e31591732fa39003c97cebef8e62fc510a7e4c74c99ff1669f4c52"
    "gl"
  end
  language "in" do
    sha256 "e70ef4260f8b24f6bcadf90ceb14efe1f41fb24bce2617f43f82f7f3acad187f"
    "hi-IN"
  end
  language "it" do
    sha256 "07bc5bb55063fac370d358d9ccdf0e97737e10db248188458756bc8c671669de"
    "it"
  end
  language "ja" do
    sha256 "f39c7e9af8ead662ea1aa86d28a740dee93cff0d93dd421e98385ee059c01049"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "813fba418666fcdeb66087735fe469ef54fefb05305f5da0561db12438db6426"
    "nl"
  end
  language "pl" do
    sha256 "340c2e4efbcb8799d5af2e0f058539c22320f3853aa40b7dda5a485581a4d2cf"
    "pl"
  end
  language "pt-BR" do
    sha256 "5ea8b4f38a18b7f2064ad9bcc17c5f251f2ed43d33ed784556a6d1f2bca592fe"
    "pt-BR"
  end
  language "pt" do
    sha256 "a70200fc3d3217f34e9a4b6b54c4f81b94abea96168647e84ad0308ea1f212c3"
    "pt-PT"
  end
  language "ru" do
    sha256 "65e4a3c7e3bcab1b2c7fc0091b097344c04d33f896d0a0c182a0d33c7140e8be"
    "ru"
  end
  language "uk" do
    sha256 "a8aa340983073e5f52de755775f8cc2c3ade9b83eb2b0d1102ce24226ec3f016"
    "uk"
  end
  language "zh-TW" do
    sha256 "bd41f04953edbd16072aa138748499d7ce94b369a69594209d81f1245997f8ee"
    "zh-TW"
  end
  language "zh" do
    sha256 "f7e58805732060a41e00fc3ecc401d12f666636fd0eebd255cd0da8445bf107a"
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
