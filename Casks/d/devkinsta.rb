cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.13.1"
  sha256 arm:   "863e0abc1e983e024dc5bd3d7b3365f65a5aa80e687a22ba7947eeb4b3452fce",
         intel: "81d4762ac92f54aa066900dcabde61ce473a0e059329a6f98ac1e0126cab80bd"

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
