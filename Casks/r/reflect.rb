cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.4"
  sha256 arm:   "e07cb58652ffca45478c6b21500f9b1cba1e1c9a77bc8e265a88bb40fdcf9112",
         intel: "765945f959720fd6c77fbece1bf07865395dd531760da1e5c67dfcae15917d14"

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
