cask "openlp" do
  version "3.0.1"
  sha256 "ee7a1d1c7f1dd7c0af5db44b424179235e059dbaf1aff64ebb392dcccdc756a0"

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
