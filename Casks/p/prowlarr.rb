cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.16.2.4435"
  sha256 arm:   "0622444580f36795570b13c60295d4b4da9d3ebb500b99cc756e75505a0c18fc",
         intel: "e19dc1be4e42836f5947477a958c8202880386913a85899a403f018945e7948a"

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
