cask "font-simple-icons" do
  version "16.5.0"
  sha256 "3c5095acda0571e1d1cebe7551bfea2c0a8bd149dad036cbec67f0c2ee53a133"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
