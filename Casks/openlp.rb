cask "openlp" do
  version "2.9.3"
  sha256 "1e9e938a61bd99b5847ae03514eefbd20922d594173102cab288df8a5f02ea10"

  url "https://get.openlp.org/#{version}/OpenLP-#{version}.dmg"
  name "OpenLP"
  desc "Worship presentation software"
  homepage "https://openlp.org/"

  livecheck do
    url "https://get.openlp.org"
    strategy :page_match
    regex(/href=['"]?(\d+(?:\.\d+)*)['"]?/i)
  end

  app "OpenLP.app"
end
