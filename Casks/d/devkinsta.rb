cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.13.6"
  sha256 arm:   "16dc1b81a1d8d45b6ae6611f9de899f6e7a5be59a2a8c80a0d0edd504afa0303",
         intel: "ebac05a7b79900c6cd700d1bd8e795ad568f8c1bfa10a1b1f12ea7bfaafa2231"

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
