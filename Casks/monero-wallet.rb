cask "monero-wallet" do
  version "0.18.1.2"
  sha256 "0e2e79471ffcc25b939de1937d54610510eaed0cbb19bbdc21a7aa64a2e9ec73"

  url "https://downloads.getmonero.org/gui/monero-gui-mac-x64-v#{version}.dmg"
  name "Monero Wallet"
  desc "Untraceable cryptocurrency wallet"
  homepage "https://getmonero.org/"

  livecheck do
    url "https://downloads.getmonero.org/gui/mac64"
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
