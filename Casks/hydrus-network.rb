cask "hydrus-network" do
  version "477"
  sha256 "235b0513e6c8adf23a2c60f9f794640d0302f47ab5305ac3026a0611f0e29d39"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+\h*)["' >]}i)
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
