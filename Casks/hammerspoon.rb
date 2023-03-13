cask "hammerspoon" do
  on_mojave :or_older do
    version "0.9.93"
    sha256 "eb4eb4b014d51b32ac15f87050eb11bcc2e77bcdbfbf5ab60a95ecc50e55d2a3"

    url "https://github.com/Hammerspoon/hammerspoon/files/7707382/Hammerspoon-#{version}-for-10.14.zip",
        verified: "github.com/Hammerspoon/hammerspoon/"

    # Specific build provided for Mojave upstream https://github.com/Hammerspoon/hammerspoon/issues/3023#issuecomment-992980087
    livecheck do
      skip "Specific build for Mojave and earlier"
    end
  end
  on_catalina :or_newer do
    version "0.9.98"
    sha256 "3e4381ffa54a498b37c466813a9d7009e1cb84f09196dbe471eb19e4b6b89b15"

    url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip",
        verified: "github.com/Hammerspoon/hammerspoon/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "Hammerspoon"
  desc "Desktop automation application"
  homepage "https://www.hammerspoon.org/"

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
