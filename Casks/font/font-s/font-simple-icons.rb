cask "font-simple-icons" do
  version "16.12.0"
  sha256 "9bb36b60dd47272d2bd14b93c2e4be4137b65fc52c14ecc7236c8603878209bc"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
