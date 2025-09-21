cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "3.0.6"
  sha256 arm:   "3712919920fe6e83c487aa314dec2aefed899cb9ee305734d3d0d65ea06538ca",
         intel: "c7fdda887628a32ed780dcdf5fb8ec75642534514f887a2d71d44d84ea11749e"

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/v#{version}/Reflect-darwin-#{arch}-#{version}.zip",
      verified: "github.com/team-reflect/reflect-electron-updates/"
  name "Reflect Notes"
  desc "Note taking app for meetings, ideas, journalling, and research"
  homepage "https://reflect.app/"

  auto_updates true

  app "Reflect.app"

  zap trash: [
    "~/Library/Application Support/Reflect",
    "~/Library/Preferences/app.reflect.ReflectDesktop.plist",
  ]
end
