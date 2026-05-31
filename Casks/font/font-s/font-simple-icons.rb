cask "font-simple-icons" do
  version "16.22.0"
  sha256 "4142cf043dc4d262da5b7c8efd1857207067d848c28842b87b0f6bbbcf85e27a"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
