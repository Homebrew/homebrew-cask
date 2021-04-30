cask "cerebro" do
  version "0.3.2"
  sha256 "a4df90aca836d6110ac65cd5c1427fb9121f93bdd36ed8527816befbda3dc833"

  url "https://github.com/KELiON/cerebro/releases/download/v#{version}/cerebro-#{version}.dmg",
      verified: "github.com/KELiON/cerebro/"
  name "Cerebro"
  desc "Open-source productivity booster with a brain"
  homepage "https://cerebroapp.com/"

  app "Cerebro.app"

  zap trash: [
    "~/Library/Application Support/Cerebro",
    "~/Library/Preferences/com.cerebroapp.Cerebro.helper.plist",
    "~/Library/Preferences/com.cerebroapp.Cerebro.plist",
    "~/Library/Saved Application State/com.cerebroapp.Cerebro.savedState",
  ]
end
