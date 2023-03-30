cask "envkey" do
  version "1.5.5"
  sha256 "32c69d5b20da62ab19e27e9f038e30d28fb458901b5a4271db9c767518d21ad5"

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
