cask "elephicon" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.9.6"

  if Hardware::CPU.intel?
    sha256 "9fca953f746e4808c903c3dffc6ccbf8e0bf6beb1834a8c252f51dc3ed9a124a"
  else
    sha256 "0c47d9a6f1f96e138c5069e87ea495f497e534e188fe552268bc472e2bd128e2"
  end

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.zip"
  name "Elephicon"
  desc "Create Apple ICNS and Microsoft ICO files from PNG"
  homepage "https://github.com/sprout2000/elephicon/"

  app "Elephicon.app"
  
  zap trash: [
    "~/Library/Application Support/Elephicon",
    "~/Library/Logs/Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon.ShipIt",
    "~/Library/Preferences/jp.wassabie64.Elephicon.plist",
    "~/Library/Saved Application State/jp.wassabie64.Elephicon.savedState",
  ]
end
