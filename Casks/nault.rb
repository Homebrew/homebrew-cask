cask "nault" do
  version "1.10.1"
  sha256 "6710677ff215b35c8a3c3abb4959f6b8c7c32bfa6194fa3c78f4a0363cb7e1eb"

  url "https://github.com/Nault/Nault/releases/download/v#{version}/Nault-#{version}-Mac.dmg"
  name "Nault"
  desc "Wallet for the Nano cryptocurrency with support for hardware wallets"
  homepage "https://github.com/Nault/Nault"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nault.app"

  zap trash: [
    "~/Library/Application Support/nault",
    "~/Library/Logs/Nault",
    "~/Library/Preferences/cc.nault.plist",
    "~/Library/Saved Application State/cc.nault.savedState",
  ]
end
