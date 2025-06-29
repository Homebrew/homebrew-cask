cask "font-simple-icons" do
  version "15.4.0"
  sha256 "64fba7b5cbb6ee72ce494a97b6ea1a578ba19ae52af1039f4e443861747d217b"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
