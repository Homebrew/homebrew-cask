cask "linear" do
  version "1.32.4"
  sha256 "bae1078fabf5b72d884c3bbba4235117e92070adcba407cdc30afb3933f14d31"

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
