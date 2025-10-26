cask "font-simple-icons" do
  version "15.18.0"
  sha256 "25b1bab8c41ab1686bd4c55f94a3a55bf867e324cdfe74c450b1bb2f64fc4616"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
