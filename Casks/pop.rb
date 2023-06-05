cask "pop" do
  version "8.0.13"
  sha256 "fccba7b7d3edac936e386fbf109d2b80145aac4cdb3dc2d687871880df332d2e"

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
