cask "envkey" do
  version "1.4.18"
  sha256 "1cece998b764accd35a2c925660b55f0bf764130fafd6f5df117d3cdd63f47d2"

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
