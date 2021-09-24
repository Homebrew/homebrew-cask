cask "linear-linear" do
  version "1.4.0"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://desktop.linear.app/mac/dmg/x64"
  else
    url "https://desktop.linear.app/mac/dmg/arm64"
  end

  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  if Hardware::CPU.intel?
    livecheck do
      url "https://desktop.linear.app/mac/dmg/x64"
      strategy :header_match
      regex(/Linear (\d+(?:\.\d+)*?)(?:-x64)?.dmg/)
    end
  else
    livecheck do
      url "https://desktop.linear.app/mac/dmg/arm64"
      strategy :header_match
      regex(/Linear (\d+(?:\.\d+)*?)(?:-arm64)?.dmg/)
    end
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
