cask "elephicon" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.9.12"

  if Hardware::CPU.intel?
    sha256 "c4d31c844f1c866ad0185aefd351fa30f1555c74637d8d5cab1595d55298ec3a"
  else
    sha256 "849127a9bcc874d28ba67fdf918ef119d02e25f877d2d0f56285a0114c76facd"
  end

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.zip"
  name "Elephicon"
  desc "Create Apple ICNS and Microsoft ICO files from PNG"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true

  app "Elephicon.app"

  zap trash: [
    "~/Library/Application Support/Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon",
    "~/Library/Caches/jp.wassabie64.Elephicon.ShipIt",
    "~/Library/Logs/Elephicon",
    "~/Library/Preferences/jp.wassabie64.Elephicon.plist",
    "~/Library/Saved Application State/jp.wassabie64.Elephicon.savedState",
  ]
end
