cask "lotus" do
  version "1.3.2"
  sha256 "ca1535e7f2a2a83aad3b6b3cf694d17932d2e61a17ba4044f1b15fd1ac31ca5c"

  url "https://app-updates.vadimdemedes.com/lotus/download/Lotus-#{version}-mac.zip",
      verified: "app-updates.vadimdemedes.com/lotus/download/"
  name "Lotus"
  desc "Keep up with GitHub notifications"
  homepage "https://getlotus.app/"

  livecheck do
    url "https://app-updates.vadimdemedes.com/lotus/download/osx"
    strategy :header_match
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
