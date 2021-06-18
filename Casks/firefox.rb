cask "firefox" do
  version "89.0.1"

  language "cs" do
    sha256 "39f1d009bc070623d016ca4a93050e89519022f3783e2d7e079522df7641e865"
    "cs"
  end
  language "de" do
    sha256 "1f0c4a8338007d3eed1bbb50d2ea30baa603e2dd7d54cbecbfa12be8c40f009e"
    "de"
  end
  language "en-CA" do
    sha256 "8668f7d9d863f383498bad8ba12ba67a4c701ada8b36d1cc101591abbb0dc838"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a04f5f576fbd2c2c52daf6f2baf3b6b0ee73a11792339259debfb1f788d8804f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "49c74dab6363dd5e76fbfff2e7d8669e883ec72fe2c3a3a0ca0f98afa4e6fb0a"
    "en-US"
  end
  language "eo" do
    sha256 "d990ee06e9d644db7bbec5ebef8884da5bcba326dd318edf2cfd8e00cfa0f582"
    "eo"
  end
  language "es-AR" do
    sha256 "c987e542fc66818d0b81f86f033378aee3c2b7522ca06acfc8b9c44a789bdc3e"
    "es-AR"
  end
  language "es-CL" do
    sha256 "9095c2d2a5b1ac38ccdb48508e2abf9f4daee81b311c228014a0a5c901baf3c6"
    "es-CL"
  end
  language "es-ES" do
    sha256 "91fefe5ec802ed75ee9b17f28146a21bddded5c1778d2914671d5cf982a6d702"
    "es-ES"
  end
  language "fi" do
    sha256 "8562e30d904fa9d6adbaabc8ac9920e09d783490cc41909cb83a3923c385a21e"
    "fi"
  end
  language "fr" do
    sha256 "ea1aa2f84c0660fe1951df58cb34f837469868ba5c81436b8f87230cfc4478ec"
    "fr"
  end
  language "gl" do
    sha256 "eea235a44de8c9a34bbccd1dc21fdfa6c98a0ebfa0be942ae30d16bd0681e82b"
    "gl"
  end
  language "in" do
    sha256 "1afce14ea84db76679dab8a6bb85d97e3d0b43e42cfe3e30eb2d31acecedcb77"
    "hi-IN"
  end
  language "it" do
    sha256 "d9b1fa7bd0a16fc89805ac23bb83d73d8ba2a1df610a02deacaa570bf9611a09"
    "it"
  end
  language "ja" do
    sha256 "631f8e5a7009b4f4b16c6125bf64b9fa79e9f520d18d9592df940f9485cdc8b5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e67cbc0b71d2b9ab5bc7181c1eabf0629bd9399a9aabe15fda82eb9c85f556ad"
    "ko"
  end
  language "nl" do
    sha256 "dc63976db47a1749889941f8d9e60e7d3cef80dd9b1e55c7fca868fcf95f239c"
    "nl"
  end
  language "pl" do
    sha256 "59331b763557e590ffde085a5f416849bb6ddc22408412cffedf5a3d2625e3ed"
    "pl"
  end
  language "pt-BR" do
    sha256 "6df483db051819c5e476102e5d5caf5cb3475100bc0570db90054b1027472127"
    "pt-BR"
  end
  language "pt" do
    sha256 "87523ac6f555172aec505a51dcdc493d5715a802e06cb8b244305bada5ff8213"
    "pt-PT"
  end
  language "ru" do
    sha256 "46e2ad2b12a89cd49da0824d7b3cd769e4583143aaee59c90c8fa63928d50501"
    "ru"
  end
  language "sv" do
    sha256 "14f23b48243eb81dabc9bb7b3323bf61485f6280c99e104cb022c3b3c199f2bf"
    "sv-SE"
  end
  language "tr" do
    sha256 "7716a67d16d8a41f97e1e078dcbbb74d5db7a7550207ccef4b62a8013fc5ddbf"
    "tr"
  end
  language "uk" do
    sha256 "adb105d4718176be33be16a7b15f91b8e1e3f35ffe4e1e957386baeb22ca918b"
    "uk"
  end
  language "zh-TW" do
    sha256 "975ce1aa3a9abe6464f001c125ca183e318836ab9c171be11bc04de68e2833e8"
    "zh-TW"
  end
  language "zh" do
    sha256 "af7ccb554098220a977166f478ab2aee86f5b939ebe5af63988ee5dd3d32e9a1"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
