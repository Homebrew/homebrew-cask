cask "hydrus-network" do
  version "523"
  sha256 "395cdee1af283af29141d060945860e4834a2bd4fdc88df3cca6327810d026c5"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Booru-style media tagger"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tree/v?(\d+(?:\.\d+)*[a-z]?)[^"' >]*?["' >]}i)
    strategy :github_latest
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
