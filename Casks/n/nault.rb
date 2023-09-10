cask "nault" do
  version "1.18.3"
  sha256 "02e768906e23774219907feb95ec84782449b3f02b575f2c653a500f24b6218c"

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
