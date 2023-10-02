cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.8.6.3946"
  sha256 arm:   "bfc63290015eb330fbc71f02250981954542c27c4c17c80a792d0fc21d93b3c3",
         intel: "2dadb8e76bc33ddc174476ead98b257336ae97fff50b72370cfda976cca70e9a"

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
