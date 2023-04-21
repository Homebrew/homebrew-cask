cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.3.2.3006"
  sha256 arm:   "2a7b184b2e8937d37a5bd8f46b0a50ff72e1e4610ea20d7e7c0e80cb8de2f9a7",
         intel: "643cadcdedc370f849dcb3750c7dd64ec10eb19f601e841c57b24b16d933d84d"

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
