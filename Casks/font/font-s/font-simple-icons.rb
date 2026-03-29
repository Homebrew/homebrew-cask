cask "font-simple-icons" do
  version "16.14.0"
  sha256 "bd4bb1c8d008b7e72efed991ac26c8d3f7a018a48348f867aa2682bfbae431cc"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
