cask "font-simple-icons" do
  version "15.8.0"
  sha256 "1463a7e005328d3e21e11cafa2f7249fe8299a7d9ab492944cfa3a4e71b76d53"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
