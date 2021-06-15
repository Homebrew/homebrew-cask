cask "devkinsta" do
  version "5.10.5,5403"
  sha256 :no_check

  url "https://devkinsta-updates.s3.amazonaws.com/DevKinsta.dmg",
      verified: "devkinsta-updates.s3.amazonaws.com"
  name "DevKinsta"
  desc "Local WordPress Development Suite by Kinsta"
  homepage "https://devkinsta.com/"

  app "DevKinsta.app"

  zap trash: [
    "~/Library/Application Support/DevKinsta",
    "~/Library/Logs/DevKinsta",
    "~/Library/Preferences/org.kinsta.DevKinsta.plist",
    "~/Library/Saved Application State/org.kinsta.DevKinsta.savedState",
  ]
end
