cask "monero-wallet" do
  arch arm: "armv8", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "arm8", intel: "64"

  version "0.18.5.3"
  sha256 arm:   "a3375415178dc049e58bdb2a5dd6ffc00ea4c288590166785f25f2e7fef5253d",
         intel: "a995bc61d367fafed6e25d23746dd7e4439d70b61be8f5a63e7d1665e63ba771"

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
