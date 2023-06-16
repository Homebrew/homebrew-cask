cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.9"
  sha256 arm:   "ea5e2eb3f7ae15b1db9dc4e6b4df91bb3696f241f78890dfcf3af8876313d348",
         intel: "1d3f4870300d383d8b5dca11846ecc4bb65236f05ac89e7b6c5e61b7c4a87d97"

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
