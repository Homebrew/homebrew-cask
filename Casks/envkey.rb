cask "envkey" do
  version "1.5.9"
  sha256 "48daf191bfa2332ae0df733c9fe9b3e0f32a0454e4b2ff5370fa2d99f28b575b"

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
