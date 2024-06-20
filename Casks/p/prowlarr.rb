cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.19.0.4568"
  sha256 arm:   "32208fb74473ecebd2998b3e33325358660e5585129d30f573fe96849ea5de27",
         intel: "38b42eed439fad24c80916520f1b06c6938040583d2df39f41c1d2df5e38f38a"

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
