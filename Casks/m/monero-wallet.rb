cask "monero-wallet" do
  arch arm: "armv8", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "arm8", intel: "64"

  version "0.18.5.1"
  sha256 arm:   "c40a9125a976d7f063216f286976a252eb5a7f26206bd034f25782691786f18c",
         intel: "1f7b2c3a0e83180267d4c09cbb4f4d14b35c4f3c218abae585f0bb288f8bf01c"

  url "https://downloads.getmonero.org/gui/monero-gui-mac-#{arch}-v#{version}.dmg"
  name "Monero Wallet"
  desc "Untraceable cryptocurrency wallet"
  homepage "https://getmonero.org/"

  livecheck do
    url "https://downloads.getmonero.org/gui/mac#{livecheck_folder}"
    strategy :header_match
  end

  depends_on :macos

  app "monero-wallet-gui.app"

  zap trash: [
    "~/.bitmonero",
    "~/Library/Preferences/org.getmonero.monero-core.plist",
    "~/Library/Preferences/org.monero-project.monero-wallet-gui.plist",
    "~/Library/Saved Application State/com.yourcompany.monero-wallet-gui.savedState",
    "~/Library/Saved Application State/org.monero-project.monero-wallet-gui.savedState",
    "~/Monero",
  ]
end
