cask "linear-linear" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.5.2"
  sha256 :no_check

  url "https://desktop.linear.app/mac/dmg/#{arch}"
  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  livecheck do
    url :url
    strategy :header_match
    regex(/Linear\s*(\d+(?:\.\d+)*?)[._-]#{arch}.dmg/)
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
