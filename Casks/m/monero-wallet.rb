cask "monero-wallet" do
  arch arm: "armv8", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "arm8", intel: "64"

  version "0.18.3.2"
  sha256 arm:   "3c48b77e0b5258350a40d8cf23c2f6fda56a7ba0193fc368473ce1e0bf59342f",
         intel: "8f18d3a63f0f52c6ae61de1881e420c6c8c2bf3296084c3d30b529430cdd9896"

  url "https://downloads.getmonero.org/gui/monero-gui-mac-#{arch}-v#{version}.dmg"
  name "Monero Wallet"
  desc "Untraceable cryptocurrency wallet"
  homepage "https://getmonero.org/"

  livecheck do
    url "https://downloads.getmonero.org/gui/mac#{livecheck_folder}"
    strategy :header_match
  end

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
