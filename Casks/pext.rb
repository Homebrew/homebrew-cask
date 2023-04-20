cask "pext" do
  version "0.35"
  sha256 "eab9c61d0a05b131bec175f08b7c5ef7e4aed07c90405f7b1b14ce8b4a11b605"

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
