cask "bluej" do
  version "5.0.0"
  sha256 "5f64a2492f1c6606de2c646e37e407615cc2febcfad479d9a7e9bc74ae95788f"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  name "BlueJ"
  desc "Java Development Environment designed for begginers"
  homepage "https://www.bluej.org/"

  livecheck do
    url "https://www.bluej.org"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/BlueJ-mac-(\d+)(\d+)(\d+)\.zip}i)
      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  app "BlueJ #{version}/BlueJ.app"
end
