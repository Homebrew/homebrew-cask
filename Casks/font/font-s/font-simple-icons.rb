cask "font-simple-icons" do
  version "16.38.1"
  sha256 "b3516d65c851b635d6d152d79ae238ab12b6f770268ef7367584f7a374749264"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  zap :not_required
end
