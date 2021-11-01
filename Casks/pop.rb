cask "pop" do
  version "8.0.3"
  sha256 "b53fc8c973351d931a452b489c04549e2d86ebac4b68d4b791fd032e33915331"

  url "https://download.pop.com/desktop-app/darwin/#{version}/Pop.dmg"
  name "Pop"
  desc "Remote pair programming"
  homepage "https://pop.com/"

  # The download page (https://pop.com/download/mac) is rendered using
  # JavaScript and the version information is sent over a WebSocket connection.
  # As such, we can't check it and there don't appear to be any alternatives.
  livecheck do
    skip "Version information not available in a checkable format"
  end

  auto_updates true

  app "Pop.app"

  zap trash: [
    "~/Library/Application Support/Pop",
    "~/Library/Preferences/com.pop.pop.app.plist",
  ]
end
