cask "bluej" do
  version "5.0.2"
  sha256 "e9073a0779698ef2214ce2c7308dd4d3a89878e975e2a9ea23fc04820c5afddf"

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
