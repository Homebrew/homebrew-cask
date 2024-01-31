cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.13.0"
  sha256 arm:   "5d9b11f589e81e67aff1ac9a1f927b79882857bf7a37f84755cbe9bf73f0145c",
         intel: "ee76851dc877de536aa21ab61e9f7adc8576683acdc344086c04b823fb933087"

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
