cask "envkey" do
  version "1.4.19"
  sha256 "c98dca849a4d74f8109ff0123602fe86d70df5222266dd254512a18fb5581fa0"

  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip",
      verified: "github.com/envkey/envkey-app/"
  name "EnvKey"
  desc "Protects credentials and syncs configurations"
  homepage "https://www.envkey.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^darwin-x64-prod-v(\d+(?:\.\d+)*)$/i)
  end

  app "EnvKey.app"
end
