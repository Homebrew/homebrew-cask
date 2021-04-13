cask "firefox" do
  version "87.0"

  language "cs" do
    sha256 "f6f8fcb90d997dbc57b0066fed8a0d10cb24b70149b5aec49094cb707d9b1df8"
    "cs"
  end
  language "de" do
    sha256 "0250066b2cd2de61c33a292c9b7fb21b7f4b4f1e63e1e9b4b1dd71ed0ba3a8bc"
    "de"
  end
  language "en-CA" do
    sha256 "383b616083f0a1d5757f31c58e3334b3c89d4dc4dd95c35514c298ab0890b384"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4c4674265a0cf0641ba8dda23ece5c1427c1706bace4d1e2fb6cceaa05afd65d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e2c7fb0bde0f541d13fba01d452a2e3715351dc4940b9e3186ac8e72453430b2"
    "en-US"
  end
  language "eo" do
    sha256 "35d17c22274cea877283af17972f3fdf5e44a4954247d129cbd4bc198ee151b2"
    "eo"
  end
  language "es-AR" do
    sha256 "537d76f1b6bd42f1917669cacfab4c3414f44b7ef1cb846a07ead82a934f60d8"
    "es-AR"
  end
  language "es-CL" do
    sha256 "e1732d2d0f14ea089e0fcbd5da6a6f4716b7626f213a17a360fc2389b7231083"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1f12cf6cbfc98c496b70cda4b944de0214e31fae641482cc13ef92f460c6d2a2"
    "es-ES"
  end
  language "fi" do
    sha256 "53981ede9c66f4079be6db48a01e5e8f00982254cbc8a9529cee0f547d0d45d5"
    "fi"
  end
  language "fr" do
    sha256 "ec35129ec3387218e0ea27df5dc317171f11737f1ad466a871f9db8d24637618"
    "fr"
  end
  language "gl" do
    sha256 "6c60dc3b177d730413ed04e1322f57bb221cc692d321dd7273420130aae2b1f3"
    "gl"
  end
  language "in" do
    sha256 "9d56c515dd3a0ed423c071367b94503896edf482f012c45c0fa6f73ad1e053fd"
    "hi-IN"
  end
  language "it" do
    sha256 "9754ff5cf02bf61c02a73737546a7c0b02158a77768c57eff5f35e27b10bbc72"
    "it"
  end
  language "ja" do
    sha256 "d592b983999a1102f4c1922c18d4b6a2a651a2f8fb0014d4dc8b59691ab0a369"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2157fa54f536775db40c9ac0cd7fa4ac2b1c2909627494ff210277da47efadd4"
    "ko"
  end
  language "nl" do
    sha256 "8e5ea4db7e1164428e8276f506b5c60e2f9b346b3758ecd9c2d30be12cfdc9dc"
    "nl"
  end
  language "pl" do
    sha256 "bef9c70cece854f2ee7ea9a24051c1aac50ba5c422b7dcbe5cb50facdec3272a"
    "pl"
  end
  language "pt-BR" do
    sha256 "d2af8f1230a2ffd4ae66bdc46f44d389e249b138024148d9a729f45a1e42595f"
    "pt-BR"
  end
  language "pt" do
    sha256 "a5b874682ee63121cc2a2ae6a2762cd03af917adc07ad7020178dbfe3a19d5ad"
    "pt-PT"
  end
  language "ru" do
    sha256 "bad21f7ef3f47f87ab920ead8a4cb4b07810d692aa58760ba8ef05ff9d0b7833"
    "ru"
  end
  language "sv" do
    sha256 "4402a0ceecf7ad8e17d4da716fd12a8072106535e1e80952a8427deb44d1fa58"
    "sv-SE"
  end
  language "tr" do
    sha256 "fbaddc2c1f4724ebc172aefa06a608818a5ca68e5bd3e8bc41a5d71fac7cd33b"
    "tr"
  end
  language "uk" do
    sha256 "f271193a98bd88267bffd2b8a4a4019c37ee10131185f9a5ab4650bc1838a7a5"
    "uk"
  end
  language "zh-TW" do
    sha256 "f9d2b3e08a2d7b346241fe5427567df6f46af0eadda69321f0dddba39864e1ac"
    "zh-TW"
  end
  language "zh" do
    sha256 "a591f0adb6ac53cc7505fcab383d5c6129a443ad4e0a682b7886a29c28929897"
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
