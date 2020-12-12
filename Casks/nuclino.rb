cask "nuclino" do
  version "1.4.0"
  sha256 :no_check

  url "https://s3.eu-central-1.amazonaws.com/repository.nuclino.com/downloads/Nuclino.dmg",
      verified: "s3.eu-central-1.amazonaws.com/repository.nuclino.com/"
  name "Nuclino"
  homepage "https://www.nuclino.com/"

  app "Nuclino.app"

  zap trash: [
    "~/Library/Application Support/Nuclino",
    "~/Library/Caches/nuclino-desktop-updater",
    "~/Library/Logs/Nuclino",
    "~/Library/Preferences/com.nuclino.desktop.plist",
  ]
end
