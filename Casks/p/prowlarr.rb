cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "1.20.1.4603"
  sha256 arm:   "a90ab43a3e15d409f9952a81c2d2477bef04a3804b819aec66c74b905bdbebc2",
         intel: "a7eb608fd13439508dc667799c6b71f41d63279f8e2038195c74bf1d1c52cc30"

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
