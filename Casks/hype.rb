cask "hype" do
  version "4.0.6"
  sha256 "b9307becb39c627ed9b9f1c2d2190b33e7d9f7494f5c4076ba17cefaf41171b0"

  url "https://tumult.com/hype/download/Hype.zip"
  appcast "https://tumult.com/hype/appcast_hype#{version.major}.xml"
  name "Tumult Hype"
  desc "App to create animated and interactive web content"
  homepage "https://tumult.com/hype/"

  # Renamed for consistency: app name is different in the Finder and in a shell
  app "Hype#{version.major}.app", target: "Hype #{version.major}.app"
end
