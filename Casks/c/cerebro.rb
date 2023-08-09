cask "cerebro" do
  version "0.11.0"
  sha256 "9c26a044f6ae0d7c4f1df8056b88ff5014edb168d4cc13e00f0cad21948359fd"

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
