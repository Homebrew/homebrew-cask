cask "radiola" do
  version "9.1.0"
  sha256 "9d011abbe0614b2490beb882598ef6d98c6e5bcd8af2fd29719d5c80fb148ce0"

  url "https://github.com/SokoloffA/radiola/releases/download/v#{version}/Radiola-#{version}.dmg"
  name "Radiola"
  desc "Internet radio player for the menu bar"
  homepage "https://github.com/SokoloffA/radiola"

  livecheck do
    url "https://sokoloffa.github.io/radiola/feed.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
