cask "font-simple-icons" do
  version "16.8.0"
  sha256 "f1ecf0f91a6ce6f3e19eeff0e41cbf3f89e04ac1c1abc5c8855ae7bcfa8e5f92"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
