cask "storyboarder" do
  version "3.0.0"
  sha256 "3cb5a0ec67a28c4c0d6a3b030d2031f7e5c4238ba8b3b0e8173435501fa9f632"

  url "https://github.com/wonderunit/storyboarder/releases/download/v#{version}/Storyboarder-#{version}.dmg",
      verified: "github.com/wonderunit/storyboarder/"
  name "Wonder Unit Storyboarder"
  desc "Visualise a story as fast you can draw stick figures"
  homepage "https://wonderunit.com/storyboarder/"

  app "Storyboarder.app"

  zap trash: [
    "~/Library/Application Support/Storyboarder",
    "~/Library/Preferences/com.wonderunit.storyboarder.helper.plist",
    "~/Library/Preferences/com.wonderunit.storyboarder.plist",
    "~/Library/Saved Application State/com.wonderunit.storyboarder.savedState",
  ]
end
