cask "reflect" do
  version "3.1.10"
  sha256 "7e31479a90b10fad3719c0fba99457bc7b9d0265c8b10ee2226fbeacd5738f4e"

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/v#{version}/Reflect-darwin-universal-#{version}.zip",
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
