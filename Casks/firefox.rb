cask "firefox" do
  version "97.0.2"

  language "cs" do
    sha256 "b303d092f146da8a39e6fdb46a4097afce836483c1b5a56379130f1454c1528f"
    "cs"
  end
  language "de" do
    sha256 "68c41a83e0b1024118854b60b701f348a6bd78a5a433e9deab181b08f38033b2"
    "de"
  end
  language "en-CA" do
    sha256 "11d0430cf42b6c13093db1186bdfec7eb2b7a89ae62af2bc25df00e7c95105d8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "16722c6f4c9d41f3621784c70bea5342c2a4052f4ebd58f257a720f125050675"
    "en-GB"
  end
  language "en", default: true do
    sha256 "404366146e79e7bf07bc1e77c27121de4eb8f178a7517a9fc1e3f56f2982b77f"
    "en-US"
  end
  language "eo" do
    sha256 "8968739ea8571ca703110063c96a23b6918fec6927a9c6364e57bcfd38d4777e"
    "eo"
  end
  language "es-AR" do
    sha256 "53e04fc299596013d2825951c148c60d42a7e9bfd5313e11ea8e3768dfb29993"
    "es-AR"
  end
  language "es-CL" do
    sha256 "ca00b398e25d7060e2e39f047ae72ca84a6756e4b5bf6ad4f35763489a4c2a01"
    "es-CL"
  end
  language "es-ES" do
    sha256 "dd23e7a912f6bf24e93f7fe568567f2085fd18812693210fe5a42748053a8ccb"
    "es-ES"
  end
  language "fi" do
    sha256 "6266ec312d76dd369fb3619a8c872c0803dacc7400482bd8ae547d595b35ad71"
    "fi"
  end
  language "fr" do
    sha256 "a3bfaf71f3978439e4bdbaee6c14815848c5e0fdcf056e10d7c4902d3f9d501d"
    "fr"
  end
  language "gl" do
    sha256 "97c08d0946d63d08ba84a2c4537ac5e07ce0c08d23ee6306a05297d2ac28dc22"
    "gl"
  end
  language "in" do
    sha256 "321d4200b92fdd702cbb50e96b14637e1d5bed32839c4fa77ada510086dec14a"
    "hi-IN"
  end
  language "it" do
    sha256 "9116b165c4ebe86d91e90f0c6bd35a990f1ca37871aebb818c7072bd7951e89b"
    "it"
  end
  language "ja" do
    sha256 "4d9784a7be1113398c79839e449e488731e847dfa04878defbf49458ab8a7eae"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2db21bdf5ecb2a4f3ed968a19869fe259e13f077a7a49d6cd11798e369c65574"
    "ko"
  end
  language "nl" do
    sha256 "dae79d1a84ed3008af61ae9708f39e736b31489848f12391a4c353bf521654e6"
    "nl"
  end
  language "pl" do
    sha256 "711b2d6154d686f5e19d196844d685d4a5aaab1a3b21b82f2f0c91395d2c2d1c"
    "pl"
  end
  language "pt-BR" do
    sha256 "a6b984e2a38cd7dad8bc6cb85368a7305547acc0eeed84df8c2558c122f4725b"
    "pt-BR"
  end
  language "pt" do
    sha256 "8ca69738cdef0ad9165261ad6fcc85fdb335a63aa128fde0a49aaebaefbcdb6b"
    "pt-PT"
  end
  language "ru" do
    sha256 "dcffa693f555ac625c486c09af8ec85dbecc13a247c2f3bb0232f3d64eefffd8"
    "ru"
  end
  language "sv" do
    sha256 "b4f62f4fa569ec2dcab77c54e67c2e65d87b1acac28e504c4b0c944a61295b2d"
    "sv-SE"
  end
  language "tr" do
    sha256 "11bf8659ababeb96c97aa17323d312f791e5f21e06e9271a29e538c6292da12e"
    "tr"
  end
  language "uk" do
    sha256 "de5f65cc152ee85b57ddf9b1cf6f52ab12f518337da942adb29bcb3306216c5a"
    "uk"
  end
  language "zh-TW" do
    sha256 "c92bd7112ba307ef9371802fc2600eef7057db5acdf25b1e49298f4832f9d4b8"
    "zh-TW"
  end
  language "zh" do
    sha256 "206377796c0a402c29a7884e49311aafd641ae0356bf6f6a5137bd2f126774c0"
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

  uninstall quit:   "org.mozilla.firefox",
            delete: "/Library/Logs/DiagnosticReports/firefox_*"

  zap trash: [
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
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
