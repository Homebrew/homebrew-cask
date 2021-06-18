cask "nault" do
  version "1.12.0"
  sha256 "61afdb81afb0c83a06c4debcaad8389c15a9e60842a683fb21bb1dddb7717de1"

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
