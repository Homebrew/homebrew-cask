cask "radarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.0.5.5981"

  if Hardware::CPU.intel?
    sha256 "b54ace4f3643b2d307302ec09e4a6ddcaa0e4e450ff040ed26930445ef216a6b"
  else
    sha256 "91649d73d2a769c431a1e03b7c2b9d3525af3a26e21ef85336baf6b1229547a0"
  end

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Radarr.app"

  # No zap stanza required
end
