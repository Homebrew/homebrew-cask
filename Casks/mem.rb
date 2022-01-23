cask "mem" do
  version "0.29.0"
  sha256 "a877cdc2c571c19c4d5f51683ca5a40f44298173b14c15dcd4274a26b46e5f7e"

  url "https://storage.googleapis.com/mem-desktop/Mem-#{version}.dmg",
      verified: "storage.googleapis.com/mem-desktop/"
  name "Mem"
  desc "Capture and access information from anywhere"
  homepage "https://get.mem.ai/"

  livecheck do
    url "https://storage.googleapis.com/mem-desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Mem.app"

  zap trash: [
    "~/Library/Application Support/mem",
    "~/Library/Preferences/org.memlabs.Mem.plist",
    "~/Library/Saved Application State/org.memlabs.Mem.savedState",
  ]
end
