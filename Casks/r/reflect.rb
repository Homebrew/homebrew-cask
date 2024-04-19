cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.8"
  sha256 arm:   "8ee44dba7a2308fee90ca2cfc52d6fd72f5c6a7bbf0257cd55f4a96e3d2f950d",
         intel: "76c2e7a9b64850ddd8f990f308266576449ff8f61faafed358d674faeba04e0c"

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
