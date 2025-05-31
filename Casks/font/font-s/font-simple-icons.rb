cask "font-simple-icons" do
  version "14.15.0"
  sha256 "56450f9cb730a48a20a6104000fedd91159a2d800d7d1e836bd46630b3ac0dc1"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons.ttf"

  # No zap stanza required
end
