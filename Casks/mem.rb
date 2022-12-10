cask "mem" do
  version "0.41.0"
  sha256 "53e5a1431fa8e40f6a674c5ec776b61fc1ea3b77ed74ebe1333a5751794f56ea"

  url "https://storage.googleapis.com/mem-desktop-stable-releases/Mem-#{version}.dmg",
      verified: "storage.googleapis.com/mem-desktop-stable-releases/"
  name "Mem"
  desc "Capture and access information from anywhere"
  homepage "https://get.mem.ai/"

  livecheck do
    url "https://storage.googleapis.com/mem-desktop-stable-releases/latest-mac.yml"
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
