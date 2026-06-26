cask "linear" do
  version "1.31.1"
  sha256 "85a673f5175b7108856c2a9dcbf4b6e5a0ac16848a9f774502460bf0d8284d8c"

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
