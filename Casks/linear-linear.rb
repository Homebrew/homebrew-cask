cask "linear-linear" do
  version "1.3.4"
  if Hardware::CPU.intel?
    url "https://desktop.linear.app/mac/dmg/x64"
  else
    url "https://desktop.linear.app/mac/dmg/arm64"
  end
  sha256 :no_check

  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  livecheck do
    url "https://desktop.linear.app/mac/dmg/x64"
    strategy :header_match
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
