cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.13.2"
  sha256 arm:   "d66d4315b899e7923027a743cefd9139f1619d119034a4e825e9788be8d7ebf3",
         intel: "64bf2328b9795b993edb1c0ca0b8f63126d0e33474f48770c48dd8fe8bbdd108"

  url "https://devkinsta-updates.s3.amazonaws.com/DevKinsta-#{version}-#{arch}.zip",
      verified: "devkinsta-updates.s3.amazonaws.com/"
  name "DevKinsta"
  desc "Local WordPress Development Suite by Kinsta"
  homepage "https://devkinsta.com/"

  livecheck do
    url "https://devkinsta-updates.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "DevKinsta.app"

  zap trash: [
    "~/Library/Application Support/DevKinsta",
    "~/Library/Logs/DevKinsta",
    "~/Library/Preferences/org.kinsta.DevKinsta.plist",
    "~/Library/Saved Application State/org.kinsta.DevKinsta.savedState",
  ]
end
