cask "blurred" do
  version "1.2.0"
  sha256 "15903ce2484f783c53cbad905ea93a5045c87767e7b89e37300d2200902dff37"

  url "https://github.com/dwarvesf/blurred/releases/download/v#{version}/Blurred.#{version}.dmg"
  name "Blurred"
  desc "Utility to dim background/inactive content in the screen"
  homepage "https://github.com/dwarvesf/blurred/"

  depends_on macos: ">= :catalina"

  app "Blurred.app"

  uninstall launchctl: "foundation.dwarves.blurredlaunche",
            quit:      "foundation.dwarves.blurred"

  zap trash: [
    "~/Library/Application Scripts/foundation.dwarves.blurred",
    "~/Library/Application Scripts/foundation.dwarves.blurredlauncher",
    "~/Library/Containers/foundation.dwarves.blurred",
    "~/Library/Containers/foundation.dwarves.blurredlauncher",
  ]
end
