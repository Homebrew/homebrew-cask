cask "mutesync" do
  arch arm: "-arm64"

  version "6.0.0"
  sha256 arm:   "394c58101574ebac12a2fd65f7436b050f8b3503167e15bf96f421cf94e10d24",
         intel: "09af65f0bd1796f2a1ba5e3eec5fccbb7f6c51b4dd77e1f0d204ef802ba9ccdd"

  url "https://mutesync.s3.amazonaws.com/mutesync-#{version}#{arch}.dmg",
      verified: "mutesync.s3.amazonaws.com/"
  name "mütesync"
  desc "Companion app to the mütesync physical button"
  homepage "https://mutesync.com/"

  livecheck do
    url "https://mutesync.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "mutesync.app"

  zap trash: [
    "~/Library/Application Support/mutesync/",
    "~/Library/Preferences/com.mutesync.electron.plist",
  ]
end
