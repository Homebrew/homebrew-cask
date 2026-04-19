cask "font-simple-icons" do
  version "16.17.0"
  sha256 "05d5626f14eb112a66543fb49ab75ca935889a32224d4542fd1cc8e926c6e7ef"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
