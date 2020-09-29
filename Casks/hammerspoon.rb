cask "hammerspoon" do
  version "0.9.81"
  sha256 "b6b92735e64ae09709804cc3296212529d8669235a035d7a42b77e2e7a37fe29"

  # github.com/Hammerspoon/hammerspoon/ was verified as official when first introduced to the cask
  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip"
  appcast "https://github.com/Hammerspoon/hammerspoon/releases.atom"
  name "Hammerspoon"
  desc "Desktop automation application"
  homepage "https://www.hammerspoon.org/"

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
