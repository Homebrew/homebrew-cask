cask "mem" do
  version "0.43.0"
  sha256 "8b6298f6dac699be5c160679d3759149a262cf1e41ea305084648dd591de41ae"

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
