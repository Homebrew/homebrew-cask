cask "mem" do
  version "0.26.0"
  sha256 "9f1daa5dc0f65d8aa255eccdf79a99782c228a7ca0ec821c23c8cab3ecef7457"

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
