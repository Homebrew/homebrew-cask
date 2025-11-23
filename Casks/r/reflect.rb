cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "3.0.7"
  sha256 arm:   "585cfd9ec693cef20df745e206c517c6823c6192f3aa0d7cc75589ea1885a36a",
         intel: "9a52d1b5ba30e7aef3d7ff0a543c50449f5f85e910e438746816746dcc647cd7"

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/v#{version}/Reflect-darwin-#{arch}-#{version}.zip",
      verified: "github.com/team-reflect/reflect-electron-updates/"
  name "Reflect Notes"
  desc "Note taking app for meetings, ideas, journalling, and research"
  homepage "https://reflect.app/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Reflect.app"

  zap trash: [
    "~/Library/Application Support/Reflect",
    "~/Library/Preferences/app.reflect.ReflectDesktop.plist",
  ]
end
