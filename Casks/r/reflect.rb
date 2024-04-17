cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.7"
  sha256 arm:   "0d579d344d6031b7c676f7fe0d3287b23adfa2a605fca90166f0693d557fe2e9",
         intel: "f140bad713b1ab36cf188b20fad5d8f9a0347455c45efed202d4eaf027a077aa"

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
