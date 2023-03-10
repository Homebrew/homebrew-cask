cask "envkey" do
  version "1.5.1"
  sha256 "07868fed0b1beae7b20abf93b2007b5bed6b6c1c0effbd4ddb0f5c9cf36ef8e0"

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
end
