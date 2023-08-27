cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "7b2002eea7e04058ff66b643c569fa5a15218eb2c394db01678b6fd6d4d453aa",
         intel: "16ac16ab0db3328b606a79b6afd4ef993792ba7830bb746217c2cdf5f7b8e117"

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
