cask "envkey" do
  version "1.5.6"
  sha256 "99c00a431ac98eb5a0da3c6b573dc898fdf2d8e961638cb54e752e555dbe09cc"

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
