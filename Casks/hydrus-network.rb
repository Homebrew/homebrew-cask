cask "hydrus-network" do
  version "522"
  sha256 "ef29a16fb7655d0b0f6ea4abbc38e10cef3fc153fe326274c186467d31c29ea9"

  url "https://github.com/hydrusnetwork/hydrus/releases/download/v#{version}/Hydrus.Network.#{version}.-.macOS.-.App.dmg",
      verified: "github.com/hydrusnetwork/hydrus/"
  name "hydrus-network"
  desc "Personal booru-style media tagger to organize your media"
  homepage "https://hydrusnetwork.github.io/hydrus/"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tree/v?(\d+(?:\.\d+)*[a-z]?)[^"' >]*?["' >]}i)
    strategy :github_latest
  end

  app "Hydrus Network.app"

  zap trash: "~/Library/Hydrus/"
end
