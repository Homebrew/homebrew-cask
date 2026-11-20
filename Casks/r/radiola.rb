cask "radiola" do
  version "13.3.0"
  sha256 "54f2428a212e8169b97facc7f3e92624e49c844acfd30ed0b3c50c782e13c8c8"

  url "https://github.com/SokoloffA/radiola/releases/download/v#{version}/Radiola-#{version}.dmg"
  name "Radiola"
  desc "Internet radio player for the menu bar"
  homepage "https://github.com/SokoloffA/radiola"

  livecheck do
    url "https://sokoloffa.github.io/radiola/feed.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Radiola.app"

  uninstall quit: "com.github.SokoloffA.Radiola"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.sokoloffa.radiola.sfl*",
    "~/Library/Application Support/com.github.SokoloffA.Radiola",
    "~/Library/Application Support/Radiola",
    "~/Library/Caches/com.github.SokoloffA.Radiola",
    "~/Library/HTTPStorages/com.github.SokoloffA.Radiola",
    "~/Library/HTTPStorages/com.github.SokoloffA.Radiola.binarycookies",
    "~/Library/Preferences/com.github.SokoloffA.Radiola.plist",
  ]
end
