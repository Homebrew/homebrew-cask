cask "font-simple-icons" do
  version "16.6.1"
  sha256 "35cc26392586c9e7370624d8844cdeacb3f13adebad1afb4814a8f7992df04c6"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
