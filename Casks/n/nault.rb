cask "nault" do
  version "1.18.2"
  sha256 "f8a7a488fe220c8452df9b80b5e176da4f488b1c5f41d7e5a80fa040f4beef7f"

  url "https://github.com/Nault/Nault/releases/download/v#{version}/Nault-#{version}-Mac.dmg"
  name "Nault"
  desc "Wallet for the Nano cryptocurrency with support for hardware wallets"
  homepage "https://github.com/Nault/Nault"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Nault.app"

  zap trash: [
    "~/Library/Application Support/nault",
    "~/Library/Logs/Nault",
    "~/Library/Preferences/cc.nault.plist",
    "~/Library/Saved Application State/cc.nault.savedState",
  ]
end
