cask "font-simple-icons" do
  version "16.38.0"
  sha256 "08d52c552e43ab7abec0246a3c2a87b52cdf2af68fea6ec0a0dc341ef25571a6"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  zap :not_required
end
