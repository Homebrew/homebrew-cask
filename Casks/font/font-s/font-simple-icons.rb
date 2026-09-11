cask "font-simple-icons" do
  version "16.30.0"
  sha256 "aeb1e445c2a2e603f6a5d5ec32f633c3ba72d6a4ccf1298eb0d43cad9f9d0573"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
