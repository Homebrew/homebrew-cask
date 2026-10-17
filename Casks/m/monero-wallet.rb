cask "monero-wallet" do
  arch arm: "armv8", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "arm8", intel: "64"

  version "0.18.5.4"
  sha256 arm:   "d28c951bf84c71ad4d0ffa2ae5a72406b7f4f9b3c06dd5bbf007a0386a0c648c",
         intel: "7fe280c14a6f8791245c8fdc75941d54eeb2c11c864b9e2df98395ce399a8435"

  url "https://downloads.getmonero.org/gui/monero-gui-mac-#{arch}-v#{version}.dmg"
  name "Monero Wallet"
  desc "Untraceable cryptocurrency wallet"
  homepage "https://getmonero.org/"

  livecheck do
    url "https://downloads.getmonero.org/gui/mac#{livecheck_folder}"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "monero-wallet-gui.app"

  uninstall quit: "org.monero-project.monero-wallet-gui"

  zap trash: [
    "~/.bitmonero",
    "~/Library/Logs/monero-wallet-gui.log",
    "~/Library/Preferences/org.getmonero.monero-core.plist",
    "~/Library/Preferences/org.monero-project.monero-wallet-gui.plist",
    "~/Library/Saved Application State/com.yourcompany.monero-wallet-gui.savedState",
    "~/Library/Saved Application State/org.monero-project.monero-wallet-gui.savedState",
    "~/Monero",
  ]
end
