cask "font-simple-icons" do
  version "16.31.0"
  sha256 "3d6a49ddb35713ae44ad5655d5a7d255e84a4d6af6c69cc998b12bbd367c3a13"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
