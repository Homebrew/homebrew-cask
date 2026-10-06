cask "font-simple-icons" do
  version "16.34.0"
  sha256 "9f6d0c5dae67fd8d5c95689d50d3597a16f14b5ef3a6404014cd5bc5abb96c65"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
