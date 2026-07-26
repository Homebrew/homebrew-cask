cask "font-simple-icons" do
  version "16.27.1"
  sha256 "918ed87b3b537d957fc48c5d47e4f538ab1cb10e5a4f9947b735b8e70a58a4b3"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
