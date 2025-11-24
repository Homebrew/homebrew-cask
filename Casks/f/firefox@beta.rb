cask "firefox@beta" do
  version "146.0b7"

  language "cs" do
    sha256 "481db621479a9b063ad929bab900e2e20181edb80872f9cc14399382a4e6aa21"
    "cs"
  end
  language "de" do
    sha256 "ca2b2cfbfeccce6af5225c10d7bdae6d5ca19e9fd0b7f76895115c5d02b4d234"
    "de"
  end
  language "en-CA" do
    sha256 "0727af5d7efab2334181d8d0aacf7e95df0c19be21cd8b86636e3baabf001d5f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "117a44f35628d68185fb2ddc7b10149508e29a6f35cd725391bdb432796919de"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0204ae77dfb7cadcbe3d008083b58e38d79c885d6924c4a66eb26b1d50dee8b2"
    "en-US"
  end
  language "es-AR" do
    sha256 "bd4e4c5abcd50c8b6a5ab8d728e062f94bea75f3861fc4f33761dc73348669ca"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6eee594b45c7473c222a5d8c86748772b2aad2c341499d2bf6cef7790217eb26"
    "es-CL"
  end
  language "es-ES" do
    sha256 "db4c8d76bf9a0c5f145bbb8b6760ace6655d537de0e21ee1dcaad4b46e19d81d"
    "es-ES"
  end
  language "fi" do
    sha256 "0d4d600040008329c9ff784bcf9c920760df11567e9afed7e0683aa04ec77ba8"
    "fi"
  end
  language "fr" do
    sha256 "adc2e6c82c4e22880dd0d0ef222436fb02826e8e8587b2f5beaae39605f1412a"
    "fr"
  end
  language "gl" do
    sha256 "8f38b2adc5dd3161b50fe9dd98216839b878f554df22c9672834f86fa9e3ef9b"
    "gl"
  end
  language "in" do
    sha256 "a3e03a270d1c788499c14cad21ea9a959644b80e07fa0f686ca9ed28ce2ecd2c"
    "hi-IN"
  end
  language "it" do
    sha256 "f4df1b03bb587a3498fd799d53b5ed247124e65ab3ec26ab8b16bcf3743f58e7"
    "it"
  end
  language "ja" do
    sha256 "ad7d8ffe5733b5f7d63bf0ca8f65c12812977f77c6aca984fd7f168af5a813b9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "82e94a82d6bb7634cc36e28a0941f1e66e9088d98f683d10b3dcd1f4e5c7d188"
    "nl"
  end
  language "pl" do
    sha256 "9193dc38d3426609e6b1494d85691f95edfe86229176eb0a831d2a976891bb63"
    "pl"
  end
  language "pt-BR" do
    sha256 "20c19d131291659af4a7f1287b396b193ddf054e0e8a1f95c0c7ff663a123b2c"
    "pt-BR"
  end
  language "pt" do
    sha256 "8ae5c43cee958a31bed66056cfb130413e41fd7fdffd5219c42909de1ceeb37a"
    "pt-PT"
  end
  language "ru" do
    sha256 "a4f8c7826783b2b33625275c7fd63a629da80cd64d7b9b500ab9c80b6b141692"
    "ru"
  end
  language "uk" do
    sha256 "8c9590aaeff14440e82dc6844072755ea98cbcd8e411d32892502dd666f70b2d"
    "uk"
  end
  language "zh-TW" do
    sha256 "54df7d5f66fb83b8575ac58670d6cdf427f0a5fcbd37eada91dcb5a2fac15bae"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ae288c720aea54e62696b65458f8d51909dade95904e802cb792a9344e35275"
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
