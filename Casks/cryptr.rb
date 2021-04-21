cask "cryptr" do
  version "0.3.0"
  sha256 "8b85da55b3b7e79ec935b794bda997e899211a9ed3ba96e0bf2887bd2799e81b"

  url "https://github.com/adobe/cryptr/releases/download/v#{version}/Cryptr-#{version}.dmg"
  name "Cryptr"
  desc "GUI for Hashicorp's Vault"
  homepage "https://github.com/adobe/cryptr"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Cryptr.app"
end
