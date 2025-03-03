cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "d02271319d42de1d567bca2bc9197cd84f25ef0c7bdb5a4ae213fa35f74ff8d2",
         intel: "9ab9d0e83ec2cdd0b7e7b8107c1e5285351dd6dbb0790e31b2ab4b6cc8b1ca4e"

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
