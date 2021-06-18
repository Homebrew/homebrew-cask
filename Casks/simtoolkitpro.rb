cask "simtoolkitpro" do
  version "0.6.84"
  sha256 "dceb06188e03a1c324c085b0466f39b1cc8fe986dea364e43af1fcaf1c9ae4ae"

  url "https://simtoolkitpro-cdn.net/automated-builds/SimToolkitPro-#{version}.Setup.dmg",
      verified: "simtoolkitpro-cdn.net/"
  name "SimToolkitPro"
  desc "EFB software for your simulator"
  homepage "https://simtoolkitpro.co.uk/"

  livecheck do
    url "https://simtoolkitpro.co.uk/download/mac"
    strategy :header_match
    regex(/SimToolkitPro[._-]?v?(\d+(?:\.\d+)+)[._-]Setup\.dmg/i)
  end

  app "SimToolkitPro.app"

  zap trash: [
    "~/Documents/SimToolkitPro",
    "~/Library/Application Support/simtoolkitpro",
  ]
end
