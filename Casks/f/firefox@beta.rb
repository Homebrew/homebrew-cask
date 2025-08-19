cask "firefox@beta" do
  version "143.0b1"

  language "cs" do
    sha256 "289bbdaf370d3913a4dc709976a290fc548742bfe0dd6c127a19069caa571ff7"
    "cs"
  end
  language "de" do
    sha256 "1fecdd926d6216a946c096b32504b2263aada4d0a59c5cb9eedba7c4b824d109"
    "de"
  end
  language "en-CA" do
    sha256 "464e05356478cb3183ef25ccedbfb9066e56d13e7f7612d3639d76ca8d05ae58"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ae6df322f730d9341020ddf8ca1f24a95de518f227ae076284a6b27b97fc11b0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b111b0f4fea5f35280f2aae1e3590613412b57dcb87335d17abf3be32e056675"
    "en-US"
  end
  language "es-AR" do
    sha256 "8154ed4bd79f57cb99351a0aa10205cd6d2f8e2830679e82581610e1bafe37e8"
    "es-AR"
  end
  language "es-CL" do
    sha256 "db86582dd6bfc87442d830b42a1ca0f16f12902bfd71801c17aad6f3282647d7"
    "es-CL"
  end
  language "es-ES" do
    sha256 "e20272e19b761240c52a3b03b3131cecb2c649dfac816fe04734a7cf42e2c56d"
    "es-ES"
  end
  language "fi" do
    sha256 "94a16338a5be857031455fd5fa59cfbcad4466e0e985383a2ca0df8611bab398"
    "fi"
  end
  language "fr" do
    sha256 "1c30ebfca77d6c01f27cfba727cd08ce7cb39e93fafca47e618a6d94b995d8dd"
    "fr"
  end
  language "gl" do
    sha256 "94a716e290745530658844de6dc68d4c4e02c92a22af7ff6963e24837a963969"
    "gl"
  end
  language "in" do
    sha256 "295ae9172ac63d31fe617811f3311e4ac1944a65abc177b093ae6cd1f8deff1d"
    "hi-IN"
  end
  language "it" do
    sha256 "9ac487f67c200301d479e75d104eb51a7b689e24e80b1db300497dd0a260c0bb"
    "it"
  end
  language "ja" do
    sha256 "afb160464b57d5fb343b84b95da26327e6c5a5d1b99cb277d42c7cf35c5372dc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "78a566fd720af93f4ca05f6f0ec750135ae85b1e731fdf0006e0734b53bfad24"
    "nl"
  end
  language "pl" do
    sha256 "cf8ba5b4ae6a9b7ce985c848dc1256535def8eabf4bb8f3a2fe8dd5060b4e442"
    "pl"
  end
  language "pt-BR" do
    sha256 "d949cb72a75bb444b4079718162245b27c3ac58415a934281c9fbaf798633f06"
    "pt-BR"
  end
  language "pt" do
    sha256 "fc72a84314eedd9631bb9a586c9ca1e6177216ac5644af931bfd899dcca9a41d"
    "pt-PT"
  end
  language "ru" do
    sha256 "e2e62f64378b7cfbeec105de8e230595b3b64294be02d7060a46c6ce790770fa"
    "ru"
  end
  language "uk" do
    sha256 "17518c657a578d9060c3165c64229f87b88f99ccf2472a9502254b6fd04f07de"
    "uk"
  end
  language "zh-TW" do
    sha256 "200fef3172f9f02b1fcbcdbf6550af1f4eace34ecb4d323c61a7984b2fc4d4b5"
    "zh-TW"
  end
  language "zh" do
    sha256 "816549e861474b48f5318a935b45594e51a1da8a9436e5b48a0ec6cc641f0f36"
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
