cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "029156fc0a7a3ec573ee4704d201ad980307ab60025167d981583687f841d773",
         intel: "48ad5eec2170bf34d1efbd82ebfe3bf7b98d273e940e2becc62f68cbf2951c27"

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/v#{version}/Reflect-darwin-#{arch}-#{version}.zip",
      verified: "github.com/team-reflect/reflect-electron-updates/"
  name "Reflect Notes"
  desc "Note taking app for meetings, ideas, journalling, and research"
  homepage "https://reflect.app/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Reflect.app"

  zap trash: [
    "~/Library/Application Support/Reflect",
    "~/Library/Preferences/app.reflect.ReflectDesktop.plist",
  ]
end
