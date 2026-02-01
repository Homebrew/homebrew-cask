cask "font-simple-icons" do
  version "16.7.0"
  sha256 "8faf69c8930507328d2d278b88493fd2230b0988b97b1fde26788826e29ce30d"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
