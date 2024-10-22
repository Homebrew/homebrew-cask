cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.25.4.4818"
  sha256 arm:   "00ae6cd46d23aaa358b79e8bb0076cf81b68b769623ef970c608a0534cccfe80",
         intel: "acc6b2ca5f207719586b9d88e57b1ccc10a80d311752da58e130b00bf8391dbb"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  zap trash: "~/.config/Prowlarr"
end
