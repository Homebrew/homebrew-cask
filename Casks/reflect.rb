cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "1bde58a78572a90c29701e4e1eb8e141b79cabfc71d6eaa4ba68ccfc238beaa1",
         intel: "6b39b954427f669e8fd6ece338078a2af848188095303c78b19ce522d01f5795"

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
