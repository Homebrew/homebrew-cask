cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.5"
  sha256 arm:   "1382a8824d9b7b85d16ba2d36ec418afef5db0248c404ddbe24740397c70dbdd",
         intel: "be6f623748d7a780b38506ded3ad32e6c107666a5986e396b3b033c30f440d9f"

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/v#{version}/Reflect-darwin-#{arch}-#{version}.zip",
      verified: "github.com/team-reflect/reflect-electron-updates/"
  name "Reflect Notes"
  desc "Note taking app for meetings, ideas, journalling, and research"
  homepage "https://reflect.app/"

  auto_updates true

  app "Reflect.app"

  zap trash: [
    "~/Library/Application Support/Reflect",
    "~/Library/Preferences/app.reflect.ReflectDesktop.plist",
  ]
end
