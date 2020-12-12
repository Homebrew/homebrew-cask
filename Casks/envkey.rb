cask "envkey" do
  version "1.4.17"
  sha256 "b50025182856e915da8742394045a7c8c373d237fa0a25567642150db0f14346"

  # github.com/envkey/envkey-app/ was verified as official when first introduced to the cask
  url "https://github.com/envkey/envkey-app/releases/download/darwin-x64-prod-v#{version}/EnvKey-#{version}-mac.zip"
  appcast "https://github.com/envkey/envkey-app/releases.atom"
  name "EnvKey"
  desc "Secure, human-friendly, cross-platform secrets and config"
  homepage "https://www.envkey.com/"

  app "EnvKey.app"
end
