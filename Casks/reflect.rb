cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.4"
  sha256 arm:   "0fad42dbc19e008298c222ffed6ff9b6c9c8d878110f082fd771018afde9cce7",
         intel: "b982ee9e1da65c6d5602e5869781cbf848e0f218637b6c7730440fe5634db9c6"

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
