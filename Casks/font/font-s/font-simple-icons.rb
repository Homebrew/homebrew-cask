cask "font-simple-icons" do
  version "16.19.0"
  sha256 "670487dc2056ce54ec539fd8e02cb670ff1a6e6dd886bc78441399c4187f61f1"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
