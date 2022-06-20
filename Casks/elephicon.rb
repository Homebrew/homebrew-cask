cask "elephicon" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.9.8"

  if Hardware::CPU.intel?
    sha256 "c8aa6361edda29a5d884842e03232fc4146480befb10b9223a2e60c298286e8f"
  else
    sha256 "ffc544f7ec719111aa0f85b033398220fef121e5518ed548b44accc244583fac"
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
