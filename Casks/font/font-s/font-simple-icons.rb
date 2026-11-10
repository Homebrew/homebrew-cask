cask "font-simple-icons" do
  version "16.37.0"
  sha256 "9d6f86438469a53e8f835d16163ec5cde81989a64dff93968fc4eff922987f7c"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  zap :not_required
end
