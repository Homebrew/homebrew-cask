cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.30.2.4939"
  sha256 arm:   "6969cdc150ef8a3755841cb2979080fadc978f64538cd3bbc17bfbbed5d0afc2",
         intel: "ea03d6649119794480015b82a012810f57410cf8bc5418ebc7236bd17739df32"

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
