cask "openlp" do
  version "3.0.2"
  sha256 "302b2b80c4a50fe810e206585ae2733025f167d843f46d354a510ad973118206"

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
