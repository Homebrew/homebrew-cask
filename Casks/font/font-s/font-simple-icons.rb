cask "font-simple-icons" do
  version "15.16.0"
  sha256 "6df4db9fd47fe2e770cc0060c12502fe89ecebb4ef6b86c6cdb0c83f006bf570"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
