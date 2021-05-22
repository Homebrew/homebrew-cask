cask "pop" do
  version "5.0.10"
  sha256 "e94ddddb5839f349bee3757c2adccccc5f6bf2ba8da9f555b88d92bf40b2fec4"

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
