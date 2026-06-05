cask "linear" do
  version "1.30.2"
  sha256 "b9db4deec3a76d3d41ebce2afc984f146abc998be173909b4f1b898ba35815a7"

  url "https://releases.linear.app/Linear-#{version}-universal.dmg"
  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  livecheck do
    url "https://releases.linear.app/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  app "Linear.app"

  zap trash: [
    "~/Library/Application Support/Linear",
    "~/Library/Caches/com.linear",
    "~/Library/Caches/com.linear.ShipIt",
    "~/Library/Preferences/com.linear.plist",
    "~/Library/Saved Application State/com.linear.savedState",
  ]
end
