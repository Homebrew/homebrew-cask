cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.1.3.2521"
  sha256 arm:   "eb118ca78ea520d099c36f94ba520945c80e23114820fad335a678daa46364fa",
         intel: "14f0a63d41f379c3a110c7a2ff15c96415c6bf7fe5c92b0b16a997e571e81cf7"

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
