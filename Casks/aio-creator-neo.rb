cask "aio-creator-neo" do
  version "2.9.3"
  sha256 :no_check

  url "https://s3-eu-west-1.amazonaws.com/mediola-download/creator_neo/release/aioCreatorNeoInstaller.dmg",
      verified: "s3-eu-west-1.amazonaws.com/mediola-download/"
  name "AIO CREATOR NEO"
  desc "Automation manager for smart home devices"
  homepage "https://www.mediola.com/en/products"

  pkg "AIO CREATOR NEO installieren.pkg"

  uninstall quit:    "com.mediola.aiocreatorneo",
            pkgutil: "com.mediola.pkg.creatorneoinstaller",
            delete:  "/Library/Application Support/AIO CREATOR NEO"

  zap delete: [
    "~/Library/Application Support/AIO CREATOR NEO",
    "~/Library/Caches/AIO CREATOR NEO",
    "~/Library/Preferences/com.mediola.aiocreatorneo.plist",
  ]
end
