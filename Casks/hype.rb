cask "hype" do
  version "4.1.2"
  sha256 "1b5cc2d0b61ae6ecb979a1178f3124c07228cf524ec3b14160362b854db11795"

  url "https://tumult.com/hype/download/Hype.zip"
  appcast "https://tumult.com/hype/appcast_hype#{version.major}.xml"
  name "Tumult Hype"
  desc "App to create animated and interactive web content"
  homepage "https://tumult.com/hype/"

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"
end
