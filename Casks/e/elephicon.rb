cask "elephicon" do
  arch arm: "arm64", intel: "x64"

  version "3.4.2"
  sha256 arm:   "6d7a7e7e6bc0b31c6c1fbd8e8d0b84b9844d41f3f454379400f0e69d8d86aaf3",
         intel: "b75cdfcbb96690bb1ec00c07c4b90307dc9bf5df0c7a7385a9e13bde70a8f95f"

  url "https://github.com/sprout2000/elephicon/releases/download/v#{version}/Elephicon-#{version}-darwin-#{arch}.dmg"
  name "Elephicon"
  desc "Create icns and ico files from png"
  homepage "https://github.com/sprout2000/elephicon/"

  auto_updates true
  depends_on macos: ">= :big_sur"

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
