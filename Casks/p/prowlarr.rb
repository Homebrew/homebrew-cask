cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.11.4.4173"
  sha256 arm:   "6b22ac3d7182eba0a56ea9a6664352f405b8753c57aad06263982c9ee2845700",
         intel: "94f3b2c872ec50a11a0093de7686959ba4ccdca369e770d555430014198b9304"

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
