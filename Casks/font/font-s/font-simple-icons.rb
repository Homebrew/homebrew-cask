cask "font-simple-icons" do
  version "15.10.0"
  sha256 "1bf15aa0c913e4a449e43e3948ff146c2bd68c96f83aa5ef27a9d5d45792f881"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
