cask "font-simple-icons" do
  version "16.6.0"
  sha256 "c38b0c574a348df67ab9e85a6e5f90cdda4e899a1d99be1a1dc05534f4e86ee7"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
