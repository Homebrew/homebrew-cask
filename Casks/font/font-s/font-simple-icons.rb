cask "font-simple-icons" do
  version "16.32.0"
  sha256 "24bd9279cef86d3beb2d94812cb75564309bc6760c35a96fb02d740dfbe80ee9"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
