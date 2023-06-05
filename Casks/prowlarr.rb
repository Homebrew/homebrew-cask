cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2.3484"
  sha256 arm:   "312f806facd0441c99652dff4de9a0cd39c305418126425eceb1bcfbb1b0e6c6",
         intel: "1c33a2d19c862fc7cfbe19783642142bbf3722afa12250110d2c2a68ccc1c705"

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
