cask "linear-linear" do
  version "1.5.1"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://desktop.linear.app/mac/dmg/x64"

    livecheck do
      url "https://desktop.linear.app/mac/dmg/x64"
      strategy :header_match
      regex(/Linear\s*(\d+(?:\.\d+)*?)[._-]x64.dmg/)
    end
  else
    url "https://desktop.linear.app/mac/dmg/arm64"

    livecheck do
      url "https://desktop.linear.app/mac/dmg/arm64"
      strategy :header_match
      regex(/Linear\s*(\d+(?:\.\d+)*?)[._-]arm64.dmg/)
    end
  end

  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

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
