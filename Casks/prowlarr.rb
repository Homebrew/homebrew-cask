cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.6.3.3608"
  sha256 arm:   "e86bb844f7b2c97e2f4f3c5a394c47c4dc017d9053698a9a361d30de2a70b349",
         intel: "4c01e503772f92e250a921c2edc7de6295a1d5162b8bb11a584b2081113ee663"

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
