cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0.2171"
  sha256 arm:   "3b607b237524387d2e6ab8f5b7d248b56d091c87ccc3e5863f32ce640da2c7ba",
         intel: "c41efdb871709a92b11b4c8818e5e74690bedf9eb3d16be48305908007c46d42"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
