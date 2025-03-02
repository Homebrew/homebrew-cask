cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "c69186978941b1dc348fdad0594780ed746abcb62546c1abac5094a498600d95",
         intel: "76bc127c6a3c26f431748468b0db227f31ec5758c563f271d68cded894b0dd99"

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
