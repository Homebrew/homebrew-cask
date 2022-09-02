cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.2"
  sha256 arm:   "1c21392d07a9135c2cd02c643623ad2d6539c0882c8485e9c7f074e4d1452062",
         intel: "8e86eaa95f3f4ebaf836a085940437bea6a9264c1a4559c23bd99f6a93d0bc8f"

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
