cask "cerebro" do
  version "0.10.0"
  sha256 "90a34e70ad24e99028ebc65059520cf99e8db1688d1c755275c41bd44db46323"

  url "https://github.com/cerebroapp/cerebro/releases/download/v#{version}/cerebro-#{version}.dmg",
      verified: "github.com/cerebroapp/cerebro/"
  name "Cerebro"
  desc "Open-source launcher"
  homepage "https://cerebroapp.vercel.app/"

  app "Cerebro.app"

  uninstall quit: "cerebro"

  zap trash: [
    "~/Library/Application Support/Cerebro",
    "~/Library/Preferences/com.cerebroapp.Cerebro.helper.plist",
    "~/Library/Preferences/com.cerebroapp.Cerebro.plist",
    "~/Library/Saved Application State/com.cerebroapp.Cerebro.savedState",
  ]
end
