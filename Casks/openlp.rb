cask "openlp" do
  version "2.9.4"
  sha256 "ad4e93c8a0f360cfbbb3cdbe27268235251ac2cfb9ac6cd6ebd2d14e8b7c31d3"

  url "https://get.openlp.org/#{version}/OpenLP-#{version}.dmg"
  name "OpenLP"
  desc "Worship presentation software"
  homepage "https://openlp.org/"

  livecheck do
    url "https://get.openlp.org"
    regex(/href=['"]?(\d+(?:\.\d+)+)['"]?/i)
  end

  app "OpenLP.app"
end
