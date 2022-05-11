cask "mem" do
  version "0.31.0"
  sha256 "c199756b8e2ee8d77c2d9aa982a87cf0f77a59ce440f4d5682a5c37a4c3ca037"

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
