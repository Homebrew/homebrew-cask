cask "prowlarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.0.1832"

  if Hardware::CPU.intel?
    sha256 "df6d1883d0d1d5bd252463b761e169ae4d0315ccce5af0a5ec9f7385770783f5"
  else
    sha256 "9550f45acffaf48c56ca007866e813bbc573b93646e564a5d6defbc577799b71"
  end

  url "https://github.com/Prowlarr/Prowlarr/releases/download/v#{version}/Prowlarr.develop.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Prowlarr/Prowlarr/"
  name "Prowlarr"
  desc "Indexer manager/proxy for various PVR apps"
  homepage "https://prowlarr.com/"

  depends_on macos: ">= :high_sierra"

  app "Prowlarr.app"

  # No zap stanza required
end
