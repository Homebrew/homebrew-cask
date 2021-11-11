cask "mem" do
  version "0.25.0"
  sha256 "e743b207ff6e2853efc4c2fcbce4b7704a0ab3a4c763b4225e26b97ee88b1593"

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
