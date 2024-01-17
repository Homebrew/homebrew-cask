cask "devkinsta" do
  arch arm: "arm64", intel: "x64"

  version "2.12.1"
  sha256 arm:   "7eb2ba1c620aed648f707fcb15aeed20e5ee6bdf64003f11b9e0f3e36454b590",
         intel: "0bc4e9076eb48170aa67f1f3292a9d42a47cd268769d2e9ed9eb820c8dceaeb2"

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
