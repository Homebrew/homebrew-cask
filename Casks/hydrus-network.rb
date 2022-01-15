cask "hydrus-network" do
  version "469"
  sha256 "d1561595941a8f78ad307a7bac28c93fe3c25982a7fe028f609cef76956b5d5f"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/v?(\d+(?:\.\d+)*)/Hydrus[._-]Network}i)
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
