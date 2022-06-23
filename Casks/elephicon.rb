cask "elephicon" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.9.10"

  if Hardware::CPU.intel?
    sha256 "e0bd45d34a517a935efb496f50646e91a6200a5779fde3cf7d24cf52d4833097"
  else
    sha256 "5583a2ceb121a6a492b6b3fddaf6067bf7ec3c8e8e4aa13e4544e916b6eb78f5"
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
