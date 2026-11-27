cask "firefox@beta" do
  version "162.0b3"

  language "cs" do
    sha256 "63e99e9496fa229c42806f90c62940b9380621d2832796bb5914da64a6ae88bd"
    "cs"
  end
  language "de" do
    sha256 "9f25b79b32bdafa7ddac362413271b5038dffab443fd8ef3e5290e37bc7ca64f"
    "de"
  end
  language "en-CA" do
    sha256 "c64c5eec12fabd885fc42270786fc3bd46f793838d07f2d68ed78d89838e2255"
    "en-CA"
  end
  language "en-GB" do
    sha256 "75c39c4b079de405945a3671763670d51b8391b90f5f9cf4bba7271a5be6364b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e778c26ae2ef4c0992317d03e624e01f19230bee7220b85fedc591a10cba5ed9"
    "en-US"
  end
  language "es-AR" do
    sha256 "671662877e36fd7ae81189b6ffeb903a252a742a109d3b560918b38b2da4758b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "cd36d522d2b07483d14210225a25673b25c48545a7777dd0d14daf2e4119e16a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "386067159ed9e860e466e0da0e3d5e3332118b782799c51fcbacaa9ad80e1373"
    "es-ES"
  end
  language "fi" do
    sha256 "6076eb81db65e64940f43e8adcafff23032b10960406785b8fa7b81caded50c6"
    "fi"
  end
  language "fr" do
    sha256 "2658ce9a1d45c01153a271a21fefe34373e5ef14986c11095de4b2e613f79351"
    "fr"
  end
  language "gl" do
    sha256 "618ff3c484cf51cc70f071464edbd96b701e6d98d5aa1fa52b0c8f1ec367d240"
    "gl"
  end
  language "in" do
    sha256 "c5c9d65e2125af9b8dc49469e02fc4f0d496f99d084105766779e9d483c6993c"
    "hi-IN"
  end
  language "it" do
    sha256 "e3577e216887f5a4219714fbd25fa3d7c012a6a517dabd975697afda13c3c0bb"
    "it"
  end
  language "ja" do
    sha256 "e4505e6996f508bea24a90b5a0f171ee3ab24c52aca893d790eb38517da7659a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3f289d66d30ffaa9c19093e7e92ce2bbc6278f406aa57008f07069cb3529ddc9"
    "nl"
  end
  language "pl" do
    sha256 "936f1ae3835bc6158e9b5e364f6fb1c3319517e3a5f0dab8d19fa73121284546"
    "pl"
  end
  language "pt-BR" do
    sha256 "0b7a49ff66fcf7b6008cc73cc13658ebb7715a7d74432a1c1822761bbe944071"
    "pt-BR"
  end
  language "pt" do
    sha256 "f9ea5d756fce651b4de7ff30da84e348a69fe50e12ce22e4408396d0a5194a53"
    "pt-PT"
  end
  language "ru" do
    sha256 "eeaf5128ca69a1e0dc39f8b6c09e1d06bcad563e8d8618b0631cbd3287a40796"
    "ru"
  end
  language "uk" do
    sha256 "2947327b81143daccebc23e81531a891f4a0ecb0ddc1eaeb0bc14132e046279b"
    "uk"
  end
  language "zh-TW" do
    sha256 "9bfd396dec8e3aeb561b6c533c0e819d5a13ab6171b7d2bc5847134ef50f9f1f"
    "zh-TW"
  end
  language "zh" do
    sha256 "766da195875f63986db23805745011c5c55f90039a88fd657a52cdaee37497af"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
    "firefox@esr",
  ]
  depends_on :macos

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
