cask "prowlarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.1.1838"

  if Hardware::CPU.intel?
    sha256 "efd651667fce5febedb2c7786081531fb5ff8b712718aed0b8c65b67fe27ef49"
  else
    sha256 "3619d00df38a87456b78af09ec8ea033680b26dab9f9fb478f6dcc33f7e19b41"
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
