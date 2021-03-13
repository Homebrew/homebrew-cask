cask "hammerspoon" do
  version "0.9.85"
  sha256 "6454099610f7ce5bcfc743f08db53a0605de997842c9d5c217d0d6b0f736b084"

  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip",
      verified: "github.com/Hammerspoon/hammerspoon/"
  name "Hammerspoon"
  desc "Desktop automation application"
  homepage "https://www.hammerspoon.org/"

  livecheck do
    url :url
    strategy :git
    regex(/^(\d+(?:\.\d+)*)$/)
  end

  auto_updates true

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
