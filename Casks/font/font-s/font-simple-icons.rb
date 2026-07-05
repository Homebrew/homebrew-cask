cask "font-simple-icons" do
  version "16.25.0"
  sha256 "abafc4d5a3cf86210ebb9e1070a4f0d14f2d4d2511b6493632f0f7a369a87768"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
