cask "lotus" do
  version "1.3.2"
  sha256 :no_check

  url "https://app-updates.vadimdemedes.com/lotus/download/osx",
      verified: "app-updates.vadimdemedes.com/lotus/download/"
  name "Lotus"
  desc "Keep up with GitHub notifications"
  homepage "https://getlotus.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  app "Lotus.app"

  zap trash: [
    "~/Library/Application Support/Lotus",
    "~/Library/Caches/com.vadimdemedes.Lotus",
    "~/Library/Caches/com.vadimdemedes.Lotus.ShipIt",
    "~/Library/HTTPStorages/com.vadimdemedes.Lotus",
    "~/Library/Preferences/com.vadimdemedes.Lotus.plist",
    "~/Library/Saved Application State/com.vadimdemedes.Lotus.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
