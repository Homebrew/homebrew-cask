cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0.4543"
  sha256 arm:   "0987ed0d9b27e8161a5dd0f8cd4ae3be12db4b6398368974e24db8486b9023b7",
         intel: "88061c8c13fc1ad0c784b01e1d44eff9c95806405063bed0ec738bd488f10f8c"

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
