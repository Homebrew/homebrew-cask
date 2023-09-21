cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "7d51928370c6c76503a46c86c07620e9c53d7332d72d65197f7fbd7b62e9fb8e",
         intel: "873149a5284fd0902d589c5f50352703dc6e0fcfaa376b741aa3cbc8ee32e9e6"

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
