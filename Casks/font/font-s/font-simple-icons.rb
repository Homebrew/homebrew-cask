cask "font-simple-icons" do
  version "16.15.0"
  sha256 "33f4d80e2831060fc3c1846c362f853f8da42b8bca716047d2127bf3c3025106"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
