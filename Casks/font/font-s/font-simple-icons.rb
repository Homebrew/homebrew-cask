cask "font-simple-icons" do
  version "15.20.0"
  sha256 "bb6a3795f1ef696575637ce60ea72f351415877c68f124c7f666e01d3a529ef5"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
