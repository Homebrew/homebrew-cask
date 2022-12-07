cask "gapid" do
  version "1.6.1"
  sha256 "144af853bf4a658d90d54df178908d84f487ffd4343c97232447412d446f5549"

  url "https://github.com/google/gapid/releases/download/v#{version}/gapid-#{version}-macos.dmg",
      verified: "github.com/google/gapid/"
  name "gapid"
  desc "Graphics API Debugger"
  homepage "https://gapid.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "GAPID.app"
end
