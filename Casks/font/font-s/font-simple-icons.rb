cask "font-simple-icons" do
  version "16.29.0"
  sha256 "61c3fd01c9401b2a782ae71797a9228e5b3cb4ad5e1a089824dfb188ec3b9ed2"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
