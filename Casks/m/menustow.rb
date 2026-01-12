cask "menustow" do
  version "0.1.0"
  sha256 "bd2a4ac89c87249673b188133c7b8f7af5d3ad611262ad596d7d7521f2839a38"

  url "https://github.com/lswank/menustow/releases/download/v#{version}/menustow-#{version}.zip",
      verified: "github.com/lswank/menustow/"
  name "menustow"
  desc "Menu bar management tool with notch-aware layout"
  homepage "https://menustow.com"

  depends_on macos: ">= :sonoma"

  app "menustow.app"

  livecheck do
    url :url
    strategy :github_latest
  end
end
