cask "font-simple-icons" do
  version "16.11.0"
  sha256 "57f198fcb65873ff4094c2b5a3d22e0c6a10eab137842d6f133c78ee9861b2a7"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
