cask "linear" do
  version "1.32.3"
  sha256 "0d664688317a0fef824bbd1f0fd8bf361f8ebedeb680557d66f03f1b2756080b"

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
