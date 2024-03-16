cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.6"
  sha256 arm:   "be677124b4ed83ea87f641b66ef6b4587ced4d0ef94e6bb039ebd3448213dac2",
         intel: "f3150352f742b864c60463e1267b40ba96cd93f17bf8bd8d34976b6f8ba3f213"

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
