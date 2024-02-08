cask "linear-linear" do
  arch arm: "arm64", intel: "x64"

  version "1.22.1"
  sha256 arm:   "41529ad0de3400f5606880a5054d530077e43c4c930795d64eae7a3e6d6fa694",
         intel: "4f12aa0bd8477b356c6717a5ced28be309a76fd8dae1c06967c27799a2f7a597"

  url "https://download.todesktop.com/200315glz2793v6/Linear%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/200315glz2793v6/"
  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  livecheck do
    url "https://download.todesktop.com/200315glz2793v6/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Linear.app"

  zap trash: [
    "~/Library/Application Support/Linear",
    "~/Library/Caches/com.linear",
    "~/Library/Caches/com.linear.ShipIt",
    "~/Library/Preferences/com.linear.plist",
    "~/Library/Saved Application State/com.linear.savedState",
  ]
end
