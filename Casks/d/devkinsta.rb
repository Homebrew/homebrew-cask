cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.13.3"
  sha256 arm:   "9e6dfd4794350644af2cd4f7805f9a6d1860885d63caba1e3b4e952d3e2431a4",
         intel: "62299f1592e2fd4f1974431d8c3218fea06225bcdefd764534c379812509f3d1"

  url "https://devkinsta-updates.s3.amazonaws.com/DevKinsta-#{version}-#{arch}.zip",
      verified: "devkinsta-updates.s3.amazonaws.com/"
  name "DevKinsta"
  desc "Local WordPress Development Suite by Kinsta"
  homepage "https://devkinsta.com/"

  livecheck do
    url "https://devkinsta-updates.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "DevKinsta.app"

  zap trash: [
    "~/Library/Application Support/DevKinsta",
    "~/Library/Logs/DevKinsta",
    "~/Library/Preferences/org.kinsta.DevKinsta.plist",
    "~/Library/Saved Application State/org.kinsta.DevKinsta.savedState",
  ]
end
