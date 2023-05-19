cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.8"
  sha256 arm:   "1e4a9b995828285fb0f4a0651a6d78bbfc84c2aa0e6ce276d5d38dc3e73e539e",
         intel: "30dc2ae70597aa910d562dc36a5977d336847d593647d28adab9bee1382c0a4d"

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
