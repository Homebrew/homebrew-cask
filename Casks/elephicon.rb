cask "elephicon" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.9.7"

  if Hardware::CPU.intel?
    sha256 "a67a15d952ebc5c0b2262f23968a5b12c69b74725f05533667f7674964b5a41c"
  else
    sha256 "c1bfddb4b4104b836857b808b5a7909471aac090a4a12a227b4e3d23445b0b6a"
  end

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.zip"
  name "Elephicon"
  desc "Create Apple ICNS and Microsoft ICO files from PNG"
  homepage "https://github.com/sprout2000/elephicon/"

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
