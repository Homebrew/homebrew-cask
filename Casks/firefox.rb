cask "firefox" do
  version "95.0"

  language "cs" do
    sha256 "0c1a972500987d1c415db69db37e17b3868e5ba505abbf5835b3c2d290624060"
    "cs"
  end
  language "de" do
    sha256 "b26ebb88642ea96ba85c32a85cadbc65565fb9da0e03ee3163b1b899feba468f"
    "de"
  end
  language "en-CA" do
    sha256 "1220c72d7c2ba491989e10518e7e8015a81d5e22fdc2cdaf90fbaff95359d08d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8109c61b641ce6387c502b7738b6e0b80c4eb5a4ad6650ed37e0f869301f0dd0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "df8f92bbaa62ad04a70b38d71fb75b5181250fffdb6085f6698fa33cce6c0704"
    "en-US"
  end
  language "eo" do
    sha256 "6836935267f0f7b09c3755ddcaa00efa719f5ea808c98ca88dd6cffdf726fae5"
    "eo"
  end
  language "es-AR" do
    sha256 "5f36e47204a978f91c9d189cdf06f37931001506341eaa5551367290862f4fba"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b503e3eb2aa515e7a399569fd7377cdf0ea489926fdf69a39775301e04841c10"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d41740b7bf09831e19d31db36cbd283ae9b089af437f9db20effa5b64e6170e2"
    "es-ES"
  end
  language "fi" do
    sha256 "8ba744fd8fd9e57a1717a56a97e5f860c4b92726b607b07f0ee81364af5379a0"
    "fi"
  end
  language "fr" do
    sha256 "81f4dbabb2253bbcbd7d654150387ee4e390d7f057ed48c4e18b4757c59a29e9"
    "fr"
  end
  language "gl" do
    sha256 "0df453b33221e6aaebdbb62a576f00f4ace9eff41346e776f39e254cf43bd955"
    "gl"
  end
  language "in" do
    sha256 "2c014298e70bb43ebaa48eeb5df7715b9d2c8dca5d9c2f800398db766dd9308d"
    "hi-IN"
  end
  language "it" do
    sha256 "97343bff570fcb8756873a38e7563e0f8843fc528fcb960aed5f733accc2b70f"
    "it"
  end
  language "ja" do
    sha256 "0b4a8eeee79f637d93d00999eb276ff968e41c82f10b11b281b98bb3fafda84d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fadb9b3bd5b36fc475230fe836410d91062954e60fb83ac1df4435273213ba8c"
    "ko"
  end
  language "nl" do
    sha256 "7ef958e77206be09eb13809d2640f9d56669ea02d329c021593eddc33138aae3"
    "nl"
  end
  language "pl" do
    sha256 "fcb3788babd25a4c2634872d2dfc9ff946911e8582b8fe8216db35b6951e2bbd"
    "pl"
  end
  language "pt-BR" do
    sha256 "afab8be7e1b48cb07e7c3d27f46cd54ad0e3dd8dcf17619904fbb34c03bbeeca"
    "pt-BR"
  end
  language "pt" do
    sha256 "026a2959e85fa896d0421c959314a35e758d5f6c9f39b29a79cff0b011cfdf85"
    "pt-PT"
  end
  language "ru" do
    sha256 "7bc74541987867e8b1a64eb33731e7f5dd78ab83fbf48ce75b76c106e6d48d8b"
    "ru"
  end
  language "sv" do
    sha256 "bae6379c762a68593bbadd80da423e931b8a4c2953ecb1f5e0c1bb84dc68e6d9"
    "sv-SE"
  end
  language "tr" do
    sha256 "6240a85f8f4864c4974d8d4f8882fb4b5d00efb25ea0ea2c1b2beadc0779d2b3"
    "tr"
  end
  language "uk" do
    sha256 "c199ca048206cd56e71fb50c4f37865f1639147f5e360cd3fcfe08f99a18c45f"
    "uk"
  end
  language "zh-TW" do
    sha256 "602d26d94ba233c0a1ac6f906efe887b0bd5d50304ac64a8c128ee1bc7303a7a"
    "zh-TW"
  end
  language "zh" do
    sha256 "ce61e68f300060b0772ae2580489394b74c5786f0c64b3ec9e9401ae0d7d1f70"
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
