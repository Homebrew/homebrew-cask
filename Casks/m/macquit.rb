cask "macquit" do
  version "1.0.3"
  sha256 "9fa3c894a2625585dc6a05bdd6d2c45fdb3fc80047204b6e3d30cf8f877fd363"

  url "https://imeymrmybnvwcikczvme.supabase.co/storage/v1/object/public/releases/MacQuit-latest.dmg"
  name "MacQuit"
  desc "Quit and force quit apps from the menu bar with resource monitoring"
  homepage "https://www.awesomemacapp.com/"

  depends_on macos: ">= :ventura"

  app "MacQuit.app"

  zap trash: [
    "~/Library/Preferences/com.macquit.app.plist",
    "~/Library/Application Support/MacQuit",
  ]
end
