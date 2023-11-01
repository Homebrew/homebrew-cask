cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "b0eab362bfcaaddf087b4eec7d8f6c4a12f3373fccb37ae6292b6fc1716a3a5f",
         intel: "2d3d188a5f18f0cbae070cd42763253ef604a30f347b385c892e9e6719696e8b"

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/#{version}/Reflect-darwin-#{arch}-#{version}.zip",
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
