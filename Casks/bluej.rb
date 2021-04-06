cask "bluej" do
  version "5.0.0"
  sha256 "5f64a2492f1c6606de2c646e37e407615cc2febcfad479d9a7e9bc74ae95788f"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  appcast "https://www.bluej.org"
  name "BlueJ"
  desc "Java Development Environment designed for begginers"
  homepage "https://www.bluej.org/"

  app "BlueJ #{version}/BlueJ.app"
end
