cask "font-simple-icons" do
  version "15.15.0"
  sha256 "bcb063154a3854c2ceccc8778d24a4f57f3c480cf1188cba4ad7742053f59dde"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
