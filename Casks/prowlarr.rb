cask "prowlarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.3.1921"

  if Hardware::CPU.intel?
    sha256 "e028d4bd5c304566c7f2d9ad9a5c335948c724b3d6c4ad99176d470a2d57787d"
  else
    sha256 "4a792231a66b177019374a735ccdc86d9d403fd155a7788b352a428e881324f5"
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
