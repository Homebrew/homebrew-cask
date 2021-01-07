cask "envkey" do
  version "1.4.17"
  sha256 "b50025182856e915da8742394045a7c8c373d237fa0a25567642150db0f14346"

  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip",
      verified: "github.com/envkey/envkey-app/"
  name "EnvKey"
  desc "Secure, human-friendly, cross-platform secrets and config"
  homepage "https://www.envkey.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^darwin-x64-prod-v(\d+(?:\.\d+)*)$/i)
  end

  app "EnvKey.app"
end
