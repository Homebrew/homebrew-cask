cask "hammerspoon" do
  if MacOS.version <= :mojave
    # A special version for Mojave, signed and notarized, released by the author at
    #  https://github.com/Hammerspoon/hammerspoon/issues/3023#issuecomment-992980087
    version "0.9.93"
    sha256 "eb4eb4b014d51b32ac15f87050eb11bcc2e77bcdbfbf5ab60a95ecc50e55d2a3"
    url "https://github.com/Hammerspoon/hammerspoon/files/7707382/Hammerspoon-#{version}-for-10.14.zip",
        verified: "github.com/Hammerspoon/hammerspoon/"
  else
    version "0.9.97"
    sha256 "ef2ed8658981f8a3157476572dd89ce496a75d097abed6939aa9af9056bc5133"

    url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip",
        verified: "github.com/Hammerspoon/hammerspoon/"
  end

  name "Hammerspoon"
  desc "Desktop automation application"
  homepage "https://www.hammerspoon.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Hammerspoon.app"

  uninstall quit: "org.hammerspoon.Hammerspoon"

  zap trash: [
    "~/.hammerspoon",
    "~/Library/Application Support/com.crashlytics/org.hammerspoon.Hammerspoon",
    "~/Library/Caches/org.hammerspoon.Hammerspoon",
    "~/Library/Preferences/org.hammerspoon.Hammerspoon.plist",
    "~/Library/Saved Application State/org.hammerspoon.Hammerspoon.savedState",
  ]
end
