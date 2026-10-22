cask "linear" do
  version "1.32.7"
  sha256 "99919aef3ea3c3f62e2900372ce4a2f63777095b835664ef6a78332e24ae5065"

  url "https://releases.linear.app/Linear-#{version}-universal.dmg"
  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  livecheck do
    url "https://releases.linear.app/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "Linear.app"

  zap trash: [
    "~/Library/Application Support/Linear",
    "~/Library/Caches/com.linear",
    "~/Library/Caches/com.linear.ShipIt",
    "~/Library/Preferences/com.linear.plist",
    "~/Library/Saved Application State/com.linear.savedState",
  ]
end
