cask "prowlarr" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4.1947"

  on_intel do
    sha256 "e028d4bd5c304566c7f2d9ad9a5c335948c724b3d6c4ad99176d470a2d57787d"
  end
  on_arm do
    sha256 "9b6da817a4bc94452177ecdeb08e3d9624a82db2a138451ce1e4cac9c5a974b0"
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
