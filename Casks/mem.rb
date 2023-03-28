cask "mem" do
  version "0.42.1"
  sha256 "f0eff29157929b7664a543b3c2bff6e4edc1666e3c2685f67fbbcc8545e94aa8"

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
