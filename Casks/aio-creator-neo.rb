cask "aio-creator-neo" do
  version :latest
  sha256 :no_check

  # s3-eu-west-1.amazonaws.com/mediola-download/ was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/mediola-download/creator_neo/release/aioCreatorNeoInstaller.dmg"
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
