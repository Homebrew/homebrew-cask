cask "simtoolkitpro" do
  version "0.7.5"
  sha256 "b488cf653ac88ac92971085c88dcaed5ef6439aeb4ebf27c4254784a6e56d9b4"

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
