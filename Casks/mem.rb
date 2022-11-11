cask "mem" do
  version "0.40.1"
  sha256 "7ec0400c2a0dae76d6d3705dc5095f39d17b7cc7d17490874b94aa104e1a333b"

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
