cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.13.3.4273"
  sha256 arm:   "7624609199ce8b2e4e9e795619146fb8e6cd511cc61ca3ba392366617d664ecc",
         intel: "eb839d469a9f8605c658fe76bc96cbe4ea5a71ee668da72e43ed53cf0bd88bc6"

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
