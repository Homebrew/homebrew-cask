cask "dmenu-mac" do
  version "0.37"
  sha256 "60a1605dd0ae7ab44d52d2c62925dd682d22bb870acfddad1c36c8fbcfc825b8"

  url "https://github.com/oNaiPs/dmenu-mac/releases/download/#{version}/dmenu-mac.zip"
  appcast "https://github.com/oNaiPs/dmenu-mac/releases.atom"
  name "dmenu-mac"
  homepage "https://github.com/oNaiPs/dmenu-mac"

  app "dmenu-mac.app"

  zap trash: [
    "~/Library/Application Scripts/com.onaips.dmenu-macos",
    "~/Library/Containers/com.onaips.dmenu-macos",
  ]
end
