cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.31.2.4975"
  sha256 arm:   "1755bf4bc6949699442bb420dedb407952acb4efaaf0b437df21180072a764c3",
         intel: "e1072358eaf17f37c18aebed76432cd6f0274cea1c580678bf4e3b591a23551e"

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
