cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.6"
  sha256 arm:   "b473b033cf810c659533f8f9fa70435b22922eaaca20dc00a8a5053606dee763",
         intel: "ed2292fc93ff16a195309765b5da4f116b506a6cc0d4056050891d9159e46440"

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
