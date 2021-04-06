cask "simtoolkitpro" do
  version "0.6.75"
  sha256 "61eda81564d701f464dc8d65f242fdc6d739ec2e4d87fd630c5adf5b8de6d5cb"

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
