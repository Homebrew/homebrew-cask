cask "font-simple-icons" do
  version "16.33.0"
  sha256 "bd617ce3e637ed03a50913ed883264d02d9d3eeee633242e8f953a9b7dd49291"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
