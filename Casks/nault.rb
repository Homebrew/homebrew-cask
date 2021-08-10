cask "nault" do
  version "1.15.0"
  sha256 "5c13bacbd888a7d3d4065c0e04caa8d699c6b3d2e92b57a9673cd040dbe52333"

  url "https://github.com/Nault/Nault/releases/download/v#{version}/Nault-#{version}-Mac.dmg"
  name "Nault"
  desc "Wallet for the Nano cryptocurrency with support for hardware wallets"
  homepage "https://github.com/Nault/Nault"

  auto_updates true

  app "Nault.app"

  zap trash: [
    "~/Library/Application Support/nault",
    "~/Library/Logs/Nault",
    "~/Library/Preferences/cc.nault.plist",
    "~/Library/Saved Application State/cc.nault.savedState",
  ]
end
