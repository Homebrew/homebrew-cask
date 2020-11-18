cask "hype" do
  version "4.1.1"
  sha256 "ea298f919123944630feed7e498f6dd1418a8f3dac197a7b767e80da04f1ea2a"

  url "https://tumult.com/hype/download/Hype.zip"
  appcast "https://tumult.com/hype/appcast_hype#{version.major}.xml"
  name "Tumult Hype"
  desc "App to create animated and interactive web content"
  homepage "https://tumult.com/hype/"

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"
end
