cask "font-simple-icons" do
  version "16.3.0"
  sha256 "ddadcaa30a99672894d1f08574c0372b700ed6dae6e9424bd0842758197a0f79"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
