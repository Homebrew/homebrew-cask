cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.11.0"
  sha256 arm:   "a7ee5ba5f42cb3c864140b216097403a200fb21b0ade230fe317784e816fa334",
         intel: "e929d4fbce20a27e54dd5b970376190e55c75529cf3a5b6f64a53cb904d07152"

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
