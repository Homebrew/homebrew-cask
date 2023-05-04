cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1.3258"
  sha256 arm:   "cbb2d03c8eeb1e9d0fd3b4777d39e57643637eeb502cbb466ca9f7365f27c2c2",
         intel: "fa81739389548618cd7fd61b852270f1dc79da3fdc39e018ba17e9c004b59b1c"

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.master.#{version}.osx-app-core-#{arch}.zip",
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
