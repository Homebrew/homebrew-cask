cask "simtoolkitpro" do
  version "0.6.81"
  sha256 "cd4745e0b26b066969050fc594759aeabca3b2a4fcc8b02bf49b06b25f85d257"

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
