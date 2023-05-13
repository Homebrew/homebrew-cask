cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.7"
  sha256 arm:   "83e97aab7f48c12f54cc5861e449dc6b04c5715d36d79dfb60fe80a59c1b3f69",
         intel: "801cbaf058aa7f9921f595f865fa697bb2ff1ebcdad122a5dbe7dec4cf8c08b3"

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
