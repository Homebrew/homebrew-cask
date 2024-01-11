cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.12.0"
  sha256 arm:   "008aceb4e436f51bcca2f3f841f654e58366db48b422c15eb0414f1a389ec1b2",
         intel: "61743a038232b347a47deb5ae5c761d10d30ee92959b205c70f2ddceee6e1a6a"

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
