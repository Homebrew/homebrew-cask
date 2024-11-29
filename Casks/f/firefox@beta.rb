cask "firefox@beta" do
  version "134.0b3"

  language "cs" do
    sha256 "997acea9df2c4d567aff774bc488856dcb561dd4b9f65f69c28b686716f052d8"
    "cs"
  end
  language "de" do
    sha256 "ebda8fca2baf8722ddfca59ba6c5a4a0c0274674e2cf5ef88a39a0342c8263ad"
    "de"
  end
  language "en-CA" do
    sha256 "52678c7eb64c75d739d08e9da07ad4caa9fbe7dc9d665ed179d6f274b084a24e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d24151532fcd77ddddd918c28d180d28713ceddc585ad469b0b75940a38e309"
    "en-GB"
  end
  language "en", default: true do
    sha256 "55a2e9fd653739b4c2d25d2bd504b3d1a427d108a9dd4defc47302e152b1eadc"
    "en-US"
  end
  language "es-AR" do
    sha256 "57aa06c557a6866b8864e2e62cef127b74eb4c7e715cf61e21f87fa6ef62c212"
    "es-AR"
  end
  language "es-CL" do
    sha256 "962664155f3da1e48dbd944ebbfacecf553c4e3defbf97c6c70154749cbc844b"
    "es-CL"
  end
  language "es-ES" do
    sha256 "85dc40f412ba902a73f9b9f24b557e90fb3a9c661f3a532263424d0815f0489c"
    "es-ES"
  end
  language "fi" do
    sha256 "80bf98cbfdfad8d95f43cee7a02e4446c6bc21da60adf2877ed7b3ce7ccb380a"
    "fi"
  end
  language "fr" do
    sha256 "c0f2fc70944a9100cfe63eafe081e19836581cc950dee38104ad374d7fa3295b"
    "fr"
  end
  language "gl" do
    sha256 "6d6cc1e84df747a227b546344df545825cb04ba5b66ed246b87f8ec272f72f43"
    "gl"
  end
  language "in" do
    sha256 "320ff68982c3923ee0b5795c040998dfe2bf1ccd83e82b795c3236253e888d1e"
    "hi-IN"
  end
  language "it" do
    sha256 "4001e4989522a330a622422d1f821a6e0d95b5260511825eea78fa1c146013b5"
    "it"
  end
  language "ja" do
    sha256 "900b816cc41db38387016a490146c93b9e9e6b92f11c6a119909cc1aadad70fb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "305a47b65b6a4692e2b5c2230d9eda68c1eb8a0f51819bdfd01aed31868542c9"
    "nl"
  end
  language "pl" do
    sha256 "063616bf1540a0bfdc82c563bdfeca39f1b7ada216a119e54e080975cd61c91c"
    "pl"
  end
  language "pt-BR" do
    sha256 "ff3c0cf85b33471040a1bf3c9f02768748c47a648e3051936b5efb961d79ba27"
    "pt-BR"
  end
  language "pt" do
    sha256 "cc5782a3cb525885003b06e72eacd67a9bb2cfcc697100106177b17814e9bb04"
    "pt-PT"
  end
  language "ru" do
    sha256 "9d7e06c4487a25aa897a740bd3303345c6b9e6ad257caff9cac6bca552747773"
    "ru"
  end
  language "uk" do
    sha256 "b4187a613587b440ae06aafd802758b75b0c0cc2d36e3f7cc3feb495868622b9"
    "uk"
  end
  language "zh-TW" do
    sha256 "eb0946ee4ae53a22324dd154666d0bfe1bf4caf0e2fc2263e79e3b6e2703b509"
    "zh-TW"
  end
  language "zh" do
    sha256 "9d3047c84775aba44473200765e2317649709f16b33db85d41d5c2b417686518"
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
