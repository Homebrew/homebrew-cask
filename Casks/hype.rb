cask "hype" do
  version "4.1.2,712"
  sha256 :no_check

  url "https://tumult.com/hype/download/Hype.zip"
  appcast "https://tumult.com/hype/appcast_hype#{version.major}.xml"
  name "Tumult Hype"
  desc "App to create animated and interactive web content"
  homepage "https://tumult.com/hype/"

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"
end
