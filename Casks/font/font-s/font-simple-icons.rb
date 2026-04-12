cask "font-simple-icons" do
  version "16.16.0"
  sha256 "8fa77825ee08a9c77024afe81c62c9eddd6355bbf6ace7bb9dd38c09a26ebfc4"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
