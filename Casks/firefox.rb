cask "firefox" do
  version "97.0"

  language "cs" do
    sha256 "11d965614452991645a41b7768b1e40018b8cd64ae68083ec383ff16444ba6cd"
    "cs"
  end
  language "de" do
    sha256 "376152647e54b05514ca56c3f42750acb8cd8850b434cbd0bcd17e8eae84845f"
    "de"
  end
  language "en-CA" do
    sha256 "45716a49afe66ada2ef2be231598cb6586803a574894c6d4d6058fa108b41558"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c25585838d3a0b366107dd33e9e7d2bf26a1a4c2e353cbcad1e4c657e43d9b8c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c06c4e58179acaf55d05c3be41d0d4cdd68f811a75322a39557d91121aa2ef74"
    "en-US"
  end
  language "eo" do
    sha256 "e6823046963caec93ca705abee86b6750cef21add4967a7d03b8490c5072cef5"
    "eo"
  end
  language "es-AR" do
    sha256 "e83efab3411e4726defaceb4f70cfe5841d4215f983e4df48ff6b73fa368cec5"
    "es-AR"
  end
  language "es-CL" do
    sha256 "51ff0a65bce97129c9e22b2e88eedb6e131f0b84221e6d4cb3bab7ffc661107a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "572376cfac243defcf34c5015c9be7383188db749af2946da36ad7eec5aa2441"
    "es-ES"
  end
  language "fi" do
    sha256 "404f01e41b4bbc1c68cc639d7b85b29fac93caa67fd60832edbe5e48af494d3f"
    "fi"
  end
  language "fr" do
    sha256 "e1427a163d4014cfb9111caf99d906c0eda152ab9486f109a4ed34334be97c36"
    "fr"
  end
  language "gl" do
    sha256 "ea0a52b706aed7b387062e406395c7ce8f4dc6455df9dbf772d8a198758b129d"
    "gl"
  end
  language "in" do
    sha256 "df99e5ce2203fe62814468718ea2925b05ba78aacdb1d0d41e180301210d9f89"
    "hi-IN"
  end
  language "it" do
    sha256 "bbaf34ab4f5959baf58edd6a5a569d0869eedaf92a830271d388ed8cefbeced0"
    "it"
  end
  language "ja" do
    sha256 "86220800c139113a96ef18db2637a0b2da25047b8da77daf90823b8e550f44ba"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e9cab59fbaeccc2bc76263ebbc661af4ff9435cadab1cba67c6738e83ba23371"
    "ko"
  end
  language "nl" do
    sha256 "c20b0d7db9548846f0fadcdc1c85a3842342be3c62977ed15d3878289e3e2166"
    "nl"
  end
  language "pl" do
    sha256 "2e29614767c0efb1b62954cea41ceabc01af241b4b55de2daf562c44bcbe4da2"
    "pl"
  end
  language "pt-BR" do
    sha256 "3553bf3ba06414419d95014c7201caabbadd45faf1f3f70d08e4bfbb5af334fb"
    "pt-BR"
  end
  language "pt" do
    sha256 "6b4f40e9cf9ff6e06915b63c90729341bf207db6fa56da66db243b56908419e4"
    "pt-PT"
  end
  language "ru" do
    sha256 "a87e0110879ba0a4dd7b7b7be9557ff612bd82da73ea0cab42e70f79b34b6d9e"
    "ru"
  end
  language "sv" do
    sha256 "9768137c98083ffe43fd44a7dbe3eed45f693e7268f0887c8dee59f44c10ac56"
    "sv-SE"
  end
  language "tr" do
    sha256 "9259a269e43f9fe8d56f5fda0e8c1f18d95edca06253e9f35f914a6bb273ff78"
    "tr"
  end
  language "uk" do
    sha256 "da483ec55b3cb3e0f320dee8da7bdc1732223435c4f64ef8b11ce8ff701f51a6"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b873fd1fdd3ea6a1db4cef03b29875f8488ae4e5596007d47c47bb7743c535f"
    "zh-TW"
  end
  language "zh" do
    sha256 "aa96682f43fb499665a92e9290317a4f0515b1da35a93320abe806e3a6ce14bf"
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
