cask "font-simple-icons" do
  version "16.13.0"
  sha256 "b61f21dc72965ff52e327905c74f08d7999362cb3f1034d3fe01a3e5dabe2464"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
