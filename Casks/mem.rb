cask "mem" do
  version "0.40.0"
  sha256 "9f490af04d8dab6e33249e3704eb69f4e2d341e5c8a707b08ec2b5efa14da885"

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
