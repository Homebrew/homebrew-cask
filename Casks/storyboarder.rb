cask "storyboarder" do
  version "2.1.0"
  sha256 "b9d97b75b4c9eca0c9e6b60148bd43b02534f2d2e27f36886028b3bed495cc38"

  # github.com/wonderunit/storyboarder/ was verified as official when first introduced to the cask
  url "https://github.com/wonderunit/storyboarder/releases/download/v#{version}/Storyboarder-#{version}.dmg"
  appcast "https://github.com/wonderunit/storyboarder/releases.atom"
  name "Wonder Unit Storyboarder"
  desc "Visualize a story as fast you can draw stick figures"
  homepage "https://wonderunit.com/storyboarder/"

  app "Storyboarder.app"

  zap trash: [
    "~/Library/Application Support/Storyboarder",
    "~/Library/Preferences/com.wonderunit.storyboarder.helper.plist",
    "~/Library/Preferences/com.wonderunit.storyboarder.plist",
    "~/Library/Saved Application State/com.wonderunit.storyboarder.savedState",
  ]
end
