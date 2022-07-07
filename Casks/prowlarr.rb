cask "prowlarr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.2.1879"

  if Hardware::CPU.intel?
    sha256 "cd7a2870c65c1028b1ab3bcb036c654d42d8629d8f13e2ef786c9b93e1d82a15"
  else
    sha256 "256279aebd7b293c7f1dbb8335574a7dd518e76da077a0885361b4b8b8bf0d0b"
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
