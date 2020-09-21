cask "hammerspoon" do
  version "0.9.79"
  sha256 "5a67ce08a6fe13a820242c4f94d051c76c6b5ea3f65596653dfe834492896132"

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
