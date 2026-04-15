cask "firefox@developer-edition" do
  version "150.0b9"

  language "ca" do
    sha256 "0322abef13ce9e1eb8a4cc231fbfc6dd3567fa5eb7eb09c9d10aec15e64a4940"
    "ca"
  end
  language "cs" do
    sha256 "08bf16524763d0cbad3ab90dc6a395a13609d565f68a518ef059530def3e1c52"
    "cs"
  end
  language "de" do
    sha256 "27c91fe510e56d57731e02e1d69aafd096a2e7f01b008da12a332d5c1ef5a872"
    "de"
  end
  language "en-CA" do
    sha256 "f35aeb08fb4016201445b003f2de661488b3359f67bd301b679a99470130eb69"
    "en-CA"
  end
  language "en-GB" do
    sha256 "06c313ffa85320a3b2d5f0a48b03403c464ca0d9c0e3676493143e316d9c7ffe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7287ff64a63079bd8f5fdcf86263b6189ae2bbbb73f6c5fe8e6a6bce1d1a7671"
    "en-US"
  end
  language "es" do
    sha256 "b4fab1c5d419c786099720810b2c68216ab0a355d9b86f31b83dc00ca8f443bc"
    "es-ES"
  end
  language "fr" do
    sha256 "247ad01b70e0a3694a3c62e830f25961b45c4456cef4846ea2d60aa6aa41ce63"
    "fr"
  end
  language "it" do
    sha256 "e7c7146ef00c443cde5aba1597cc6bec1eebf29d91d76ea12c6550ba12162e5d"
    "it"
  end
  language "ja" do
    sha256 "637f652bd0b5338db48f481e06868d66644da5fe6d58c3a9aeaa8fad66648b2a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b6d61c55587a31a162c6af2458a456c050a3a1e1ea076f0025ed71327a5ce4e6"
    "ko"
  end
  language "nl" do
    sha256 "86c907f2cd3e4025f546aa354423a9428d6ceafdff03cf2a471d5bbf160ffe3e"
    "nl"
  end
  language "pt-BR" do
    sha256 "66e19138e48a59f316e15cf06024becc431b9daff206451a4e6268a3827f233f"
    "pt-BR"
  end
  language "ru" do
    sha256 "82f422db63721a6fab0921379d77f7bc8f0adde3a19fdda3fc01fb36160eda8d"
    "ru"
  end
  language "uk" do
    sha256 "5b500447cd9fa29bf9591753ffe53afe15335476165124979c357e72d9402f19"
    "uk"
  end
  language "zh-TW" do
    sha256 "7440f36add9bd8a3391c0f9b929b7533356943e43667c86e352e2c60a1a3c001"
    "zh-TW"
  end
  language "zh" do
    sha256 "91be6bff93b1e3f5977c4a458e33dbc2e445ca72455446ed9d324690f8a1cd75"
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
