cask "openlp" do
  version "3.0.0"
  sha256 "550855aea969120d3d139153dafd613fb7912c8d58f81ba6f13582a1366b22bf"

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
