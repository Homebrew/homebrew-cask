cask "envkey" do
  version "1.5.3"
  sha256 "598134965b3f6cf8824de5dc1b3e690a7e565a319e20052ebf48ebe96f15d28a"

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
end
