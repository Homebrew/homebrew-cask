cask "font-simple-icons" do
  version "16.2.0"
  sha256 "cc85900e5774b562ecdd7eaef8c1fd3a1500978159a4748670b476edb2373de4"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
