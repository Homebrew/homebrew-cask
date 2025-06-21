cask "localsend" do
  version "1.17.0"
  sha256 "fdf1a42ee13eb9fdd6ae94dc5883981e8a09599e758bde23f6e677c4fab5c93c"

  url "https://github.com/localsend/localsend/releases/download/v#{version}/LocalSend-#{version}.dmg",
      verified: "github.com/localsend/localsend/"
  name "LocalSend"
  desc "Open-source cross-platform alternative to AirDrop"
  homepage "https://localsend.org/"

  depends_on macos: ">= :big_sur"

  app "LocalSend.app"

  zap trash: [
    "~/Library/Application Scripts/org.localsend.localsendApp",
    "~/Library/Containers/org.localsend.localsendApp",
    "~/Library/Preferences/org.localsend.localsendApp.plist",
    "~/Library/Saved Application State/org.localsend.localsendApp.savedState",
  ]
end
