cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1.2220"
  sha256 arm:   "b3b3fc4a225fe034ede4735f643f5802426a08ade042c9849ae0803326248ec6",
         intel: "89b94668ad9ed701c28e3b10061aa1e27c9be04023ba1ca2a78a7ca1f79e2dc0"

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
