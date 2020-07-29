cask "nuclino" do
  version :latest
  sha256 :no_check

  # s3.eu-central-1.amazonaws.com/repository.nuclino.com/ was verified as official when first introduced to the cask
  url "https://s3.eu-central-1.amazonaws.com/repository.nuclino.com/downloads/Nuclino.dmg"
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
