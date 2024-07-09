cask "coffitivity-offline" do
  version "1.0.2"
  sha256 "f4d0f9cf0bc7da08ec6bada4ce67bd501c51ebe5c04be193895d91c51318790f"

  url "https://github.com/siwalikm/coffitivity-offline/releases/download/v#{version}/Coffitivity.Offline-#{version}.dmg",
      verified: "github.com/siwalikm/coffitivity-offline/"
  name "Coffitivity Offline"
  desc "Ambient sound generator"
  homepage "https://coffitivity-offline.siwalik.in/"

  app "Coffitivity Offline.app"

  zap trash: [
    "~/Library/Application Support/coffitivity-offline",
    "~/Library/Preferences/com.electron.coffitivity-offline.helper.plist",
    "~/Library/Preferences/com.electron.coffitivity-offline.plist",
    "~/Library/Saved Application State/com.electron.coffitivity-offline.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
