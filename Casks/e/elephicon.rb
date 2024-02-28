cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "2.9.2"
  sha256 arm:   "92de20268fcec76b64aec6705b50d89159cb7781c740f5c5db62610927cc5ac6",
         intel: "a0653ab7c69ba9ff2c67622356c9241b7807e7a9a9c27ba1ad4a28480928555b"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
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
