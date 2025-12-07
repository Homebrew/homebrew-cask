cask "font-simple-icons" do
  version "16.1.0"
  sha256 "db630735e28f8444d8add4094e4953fb70929d6a4ce23204c1b6575c6c8414d3"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
