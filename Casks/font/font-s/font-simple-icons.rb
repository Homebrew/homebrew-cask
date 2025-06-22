cask "font-simple-icons" do
  version "15.3.0"
  sha256 "56f6aa42459f30d6a74254fa874b013a8d1e83e69998022e05a8bfd0a4d4311c"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
