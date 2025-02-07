cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "3.0.3"
  sha256 arm:   "602b1d17655d67284e7a869dc64c9e02c7fc7719567c176b09eb69e640dae025",
         intel: "bbd195623e2705a85d2acc319389165f33a850c16e4f50ce5dafa9aa8a5a19ac"

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
