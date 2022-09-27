cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.3"
  sha256 arm:   "716a429e89c7a88fdb3960d94c684ef036d958e3da0a8f82f595efdbcc74b7ed",
         intel: "1ea0e430a47e2d37091027ed77b14bd439d21f333788acd59b4ac973fe655ef0"

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/v#{version}/Reflect-darwin-#{arch}-#{version}.zip",
      verified: "github.com/team-reflect/reflect-electron-updates/"
  name "Reflect Notes"
  desc "Note taking app for meetings, ideas, journalling, and research"
  homepage "https://reflect.app/"

  app "Reflect.app"

  zap trash: [
    "~/Library/Application Support/Reflect",
    "~/Library/Preferences/app.reflect.ReflectDesktop.plist",
  ]
end
