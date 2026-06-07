cask "font-simple-icons" do
  version "16.23.0"
  sha256 "707582a601a2a50e67efefc54e2c0109bdc24dc5ccbf269354e1db07e6a1ed06"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
