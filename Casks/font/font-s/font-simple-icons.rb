cask "font-simple-icons" do
  version "16.24.0"
  sha256 "c5b5b0f793cbb661b01969dfc9dd32fe584963d01eb01b56490dbac1178211ba"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
