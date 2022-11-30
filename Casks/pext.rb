cask "pext" do
  version "0.34"
  sha256 "0a1d64ba551c53dd768ea2e3c9d187e5f1356e9994e2c55544bfff7e3e13c814"

  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg",
      verified: "github.com/Pext/Pext/"
  name "Pext"
  desc "Python-based extendable tool"
  homepage "https://pext.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Pext.app"
end
