cask "ios-app-signer" do
  version "1.13.1"
  sha256 "baf6826427706b0b3f685ffb3beced86cf348b74d60e1f81d75c4c3e8a779f47"

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
