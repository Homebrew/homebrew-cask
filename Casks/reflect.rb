cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.0.5"
  sha256 arm:   "a49882fa00cddb1e8d5cf02a922885e4ac786ee32ab2da263cee7fe05372ba3c",
         intel: "5b2fa051ad0343d5a1082951194fbfe4a568ae6ef9edb17aa0601a2cb3d360be"

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
