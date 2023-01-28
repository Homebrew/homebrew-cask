cask "lotus" do
  version "1.3.2"
  sha256 :no_check

  url "https://getlotus.app/download"
  name "Lotus"
  desc "Keep up with GitHub notifications without stress"
  homepage "https://getlotus.app/"

  app "Lotus.app"

  zap trash: [
    "~/Library/Application Support/Lotus",
    "~/Library/Caches/com.vadimdemedes.Lotus",
    "~/Library/Caches/com.vadimdemedes.Lotus.ShipIt",
    "~/Library/HTTPStorages/com.vadimdemedes.Lotus",
    "~/Library/Preferences/com.vadimdemedes.Lotus.plist",
    "~/Library/Saved Application State/com.vadimdemedes.Lotus.savedState",
  ]
end
