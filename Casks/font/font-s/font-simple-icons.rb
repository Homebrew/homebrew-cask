cask "font-simple-icons" do
  version "16.21.0"
  sha256 "d52b7613eac4db36e8ff5569b98890d2c05c9bde9a733ec2ef1e7b3155892f11"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
