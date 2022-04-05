cask "firefox" do
  version "99.0"

  language "cs" do
    sha256 "a295caceb682bb27a947900467c004eb48b2953d7f49697e999869494e110c2e"
    "cs"
  end
  language "de" do
    sha256 "5b079d77fb991657d31bead3675197d93f272e130c8adad42273c0c1e065c24c"
    "de"
  end
  language "en-CA" do
    sha256 "ded01c33ed2f3742c9514924373ce08e8110a9872d132d4fcb871e70a7059824"
    "en-CA"
  end
  language "en-GB" do
    sha256 "69622c55693ccde97d4b009216723da04cf2f6d1603ffa68dbd1bdacb39159f5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c54367d73f3d47b7f41eb5751014168a27584674b8fb2e541c05f835baccf623"
    "en-US"
  end
  language "eo" do
    sha256 "73009c2d7151bd4d40d34bcbf97dfeb6820f716d850083fc424e4f27b53171c8"
    "eo"
  end
  language "es-AR" do
    sha256 "7150f47117aa5c77b75719c048bdce89f06e2ccded859caf3db35dca44d17408"
    "es-AR"
  end
  language "es-CL" do
    sha256 "bf349de04a6a20a6a5dc0a90a960799de059a761785bd1d90ab01d11f78f15ba"
    "es-CL"
  end
  language "es-ES" do
    sha256 "c4481474c13adb06ec8c580ba48ec249453162814bc43c32a69d666f5af1fdf3"
    "es-ES"
  end
  language "fi" do
    sha256 "35a6a4ee957fbe85416d0f601766427dd6e5e04a08f30e01b55686b08f57d654"
    "fi"
  end
  language "fr" do
    sha256 "c8b579eb1f6e83fbea7e6a8069a8c4775387c56e339e47747ded59282e0dbb80"
    "fr"
  end
  language "gl" do
    sha256 "3a25f12a9d7b8ea9bcef8f46e5c9aa379487f2ce70369cebd628b73cd3b3e337"
    "gl"
  end
  language "in" do
    sha256 "37fb5adfc7241108b16ef03b7732382c28de6379d09047aeb6d66b750ac3ea90"
    "hi-IN"
  end
  language "it" do
    sha256 "098e182ce5a55e1cbffd4f83f9e27d707756fcda6fd0926ed8ec1b6c64435a19"
    "it"
  end
  language "ja" do
    sha256 "07efe4d94fb04807ceaf64d3319bbbd0d7f752023c33cca7852c022e413f9d2b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2c4eb200e4b38d6d96f0eb2d77540464b80c2f351b9f70ae3084610d3e5b6a89"
    "ko"
  end
  language "nl" do
    sha256 "b8b986db9785bc98cef7b4e671d6bf479ef696cdd54e21764493e7678bc783b9"
    "nl"
  end
  language "pl" do
    sha256 "e783eab34b27639818a4b8aec025aa4c4fb2df263c8f01fe57b738e434ecfb90"
    "pl"
  end
  language "pt-BR" do
    sha256 "4b68f11b701047d8bff7f4ebb40a83c7aa88dc55598844215ee1d3722b88d8f4"
    "pt-BR"
  end
  language "pt" do
    sha256 "37cda602b3b766d4e153d9d2eac03d22a300ce23c18574815470ae2e84bee437"
    "pt-PT"
  end
  language "ru" do
    sha256 "c4ae8f26191b5a2bce99afce2e4fa0efbb796c33a31343c7d29d873bd1f35430"
    "ru"
  end
  language "sv" do
    sha256 "323c7ef9d2883f3139a56041b0f8c87a9f03e6bb7f76ce5849fa1cf21f1884b0"
    "sv-SE"
  end
  language "tr" do
    sha256 "5aa5a67be1104fc68c89a41c6f56431d86a6b31bc0651c65ec2646be412adee2"
    "tr"
  end
  language "uk" do
    sha256 "7ad012845d26e0b30ec19d26ba5de0a0df57354d6d9987eabe000af51a1abd01"
    "uk"
  end
  language "zh-TW" do
    sha256 "aecb04089da65bf0cc2d332e060a74f45ac97ec21a0ac12c2861a8fff420bfad"
    "zh-TW"
  end
  language "zh" do
    sha256 "70dab901691ebdbb19db287a51b1894c58bfda6a3f2277a98d869cd6a7905766"
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
