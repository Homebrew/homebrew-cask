cask "openlp" do
  version "2.9.5"
  sha256 "adcf0101826d303d4278eb887a0eb16f0e68e86d259c6f909b2750afdb568a6c"

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
