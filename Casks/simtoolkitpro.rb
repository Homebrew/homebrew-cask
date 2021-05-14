cask "simtoolkitpro" do
  version "0.6.80"
  sha256 "8c8ea93a2ab8e55af0b4ca7a7f7cb1356a6fec3de6b54b97f9adce77aa3b04e1"

  url "https://simtoolkitpro-cdn.net/automated-builds/SimToolkitPro-#{version}.Setup.dmg",
      verified: "simtoolkitpro-cdn.net/"
  name "SimToolkitPro"
  desc "EFB software for your simulator"
  homepage "https://simtoolkitpro.co.uk/"

  livecheck do
    url "https://simtoolkitpro.co.uk/download/mac"
    strategy :header_match
    regex(/SimToolkitPro-(\d+(?:\.\d+)*).Setup\.dmg/i)
  end

  app "SimToolkitPro.app"

  zap trash: [
    "~/Documents/SimToolkitPro",
    "~/Library/Application Support/simtoolkitpro",
  ]
end
