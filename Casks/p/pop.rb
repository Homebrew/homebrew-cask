cask "pop" do
  version "8.0.21"
  sha256 "5c26ec53597edec6110ccabf9a94fa715ac6f1906e03a2a73fd192416c4cd3be"

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
