cask "ios-app-signer" do
  version "1.14"
  sha256 "7738a2b75b72ca9493a6f9c8ee4a7a6118fbfc77c61ddf6f02d41bfac8c739d2"

  url "https://github.com/DanTheMan827/ios-app-signer/releases/download/#{version}/iOS.App.Signer.app.zip",
      verified: "github.com/DanTheMan827/ios-app-signer/"
  name "iOS App Signer"
  desc "App for (re)signing iOS apps and bundling them"
  homepage "https://dantheman827.github.io/ios-app-signer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "iOS App Signer.app"

  zap trash: [
    "~/Library/Caches/com.DanTheMan827.AppSigner",
    "~/Library/Preferences/com.DanTheMan827.AppSigner.plist",
  ]
end
