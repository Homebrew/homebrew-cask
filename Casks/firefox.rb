cask "firefox" do
  version "88.0"

  language "cs" do
    sha256 "2113b3901bb1b7697fd3044c5e41f4315624cf64aa60090d44a024a830d86b04"
    "cs"
  end
  language "de" do
    sha256 "853c37356fc89dee38926e375de5d3ad1ac34aa9b9bf5d2434fb2aefa5ec140a"
    "de"
  end
  language "en-CA" do
    sha256 "1b83a3e8c4e6006b6978b4a82006af9b8e4fa59481a9955039551ad0446a094c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f7dddd663d7dc45450f177b708e9560da24e1240eedc5abe6f8f86880f517a9d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e12a1f5db329e349c5e49e448a589b9649cdbda225eae13813b41e8f88f0f33"
    "en-US"
  end
  language "eo" do
    sha256 "9c60f5156cfd95555d48da047fc8947bf0be15f06583720a15cdd26e555c71ca"
    "eo"
  end
  language "es-AR" do
    sha256 "f3c40dc9a9542b28cb1b3d01b9bd9ad60bc9ceeede2c6801b87e7a9948005931"
    "es-AR"
  end
  language "es-CL" do
    sha256 "23a3e3731308494d7c49eb7c63467aa018ec1483272610ec7867c8744495536b"
    "es-CL"
  end
  language "es-ES" do
    sha256 "30646fcb39f2fd090793ae8333c02bc7289111cc1436708ef21bfd95e72f680d"
    "es-ES"
  end
  language "fi" do
    sha256 "0099f7efffe4031ab8a2f34a4053bcdf989829f5792db577469ac7fc17b6ae87"
    "fi"
  end
  language "fr" do
    sha256 "148f400e657c50740ba763685f327d3813f0114e9241761268bf439da3c426a3"
    "fr"
  end
  language "gl" do
    sha256 "e00345103bbffa22c2a20c88c92b5f996e6594af2c6600128528d4160f114bec"
    "gl"
  end
  language "in" do
    sha256 "8891ba4d12f0dbd68e5da80de9762c29fad2b19abaff60e205ee204b317b803c"
    "hi-IN"
  end
  language "it" do
    sha256 "ae59164f318131164a35ba6226e205d4fd72ceb9a81acf243f12454266a6c8f5"
    "it"
  end
  language "ja" do
    sha256 "7112de36c67c52e34ee69023ccf890098ccd54b6d21fa8748b495c2e83469dca"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a871878d7732d3f81a298f021b9c7bf671bdc5d92cc5e1812087b4744808f773"
    "ko"
  end
  language "nl" do
    sha256 "8b8d4388d5e75c08c392c9fe25d2e865169c86122b8fb20f009f8e78332e49ff"
    "nl"
  end
  language "pl" do
    sha256 "b0cadedef4927af2c9ffcbfc3b86d707616e82fe4ebd7eb99bd48ec032fcf713"
    "pl"
  end
  language "pt-BR" do
    sha256 "521e51af10b02e89a1c4bdf0f894037df2a3779cd5ea75a0bbfbe8cf84a73cff"
    "pt-BR"
  end
  language "pt" do
    sha256 "0a52bb7771bdbc4299084994e74b4ac4726c3142f98351ee17dc5c56e60cbd07"
    "pt-PT"
  end
  language "ru" do
    sha256 "e81a2503748b8c23a060871f1bab1231ee5db1815022fd7e72134a0bf4a585d2"
    "ru"
  end
  language "sv" do
    sha256 "6d9d7ea493ea1460eaa02c66e2293195dd51d7f30bf22b80172bea535cca96f0"
    "sv-SE"
  end
  language "tr" do
    sha256 "0ed99f2233067f2dd9d33ebe1dc380ee4c24cd71e6aedfdee05806431221d0d0"
    "tr"
  end
  language "uk" do
    sha256 "d5b6487b31c64094aa253d7c572c278bc824da72deef02920a92c73722bb4056"
    "uk"
  end
  language "zh-TW" do
    sha256 "dd50e7939535fcf4002e9918b872ca64c0e81cfce66264681b3f55906445a66c"
    "zh-TW"
  end
  language "zh" do
    sha256 "3852cdbc8045615ec261848dad3403dfc058aec8f23035823d07294664d4a8ff"
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
