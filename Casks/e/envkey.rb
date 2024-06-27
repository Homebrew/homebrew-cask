cask "envkey" do
  version "1.5.10"
  sha256 "97f672b9473b1f213cb068de147fb2c8b7f01beb2c2d747910dfcde29c0efb7a"

  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip",
      verified: "github.com/envkey/envkey-app/"
  name "EnvKey"
  desc "Protects credentials and syncs configurations"
  homepage "https://www.envkey.com/"

  livecheck do
    url :url
    regex(/^darwin-x64-prod[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "EnvKey.app"

  zap trash: [
    "~/Library/Application Support/EnvKey",
    "~/Library/Caches/com.envkey.EnvKeyApp",
    "~/Library/Caches/com.envkey.EnvKeyApp.ShipIt",
    "~/Library/HTTPStorages/com.envkey.EnvKeyApp",
    "~/Library/Logs/EnvKey",
    "~/Library/Preferences/com.envkey.EnvKeyApp.plist",
  ]

  caveats do
    requires_rosetta
  end
end
