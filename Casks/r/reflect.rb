cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "3.1.3"
  sha256 arm:   "c9df9ed72e1b56e0ed5c31e3e995aa1f2249087b1961a413947c645053d07378",
         intel: "651a069690156be46cce2b72152117048b97a5e0f5cff1e1ef8260a5edebbb49"

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/v#{version}/Reflect-darwin-#{arch}-#{version}.zip",
      verified: "github.com/team-reflect/reflect-electron-updates/"
  name "Reflect Notes"
  desc "Note taking app for meetings, ideas, journalling, and research"
  homepage "https://reflect.app/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Reflect.app"

  zap trash: [
    "~/Library/Application Support/Reflect",
    "~/Library/Preferences/app.reflect.ReflectDesktop.plist",
  ]
end
