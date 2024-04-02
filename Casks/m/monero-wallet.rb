cask "monero-wallet" do
  arch arm: "armv8", intel: "x64"
  livecheck_folder = on_arch_conditional arm: "arm8", intel: "64"

  version "0.18.3.3"
  sha256 arm:   "cd745209d328dddc9a4deb3073aad40144f9d544970bdada1789cc5b5cbef0e5",
         intel: "a7777e1ca4a8ba3621cb6f79bafd160c93914f7250b739e33c846e1f9b8634c4"

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
