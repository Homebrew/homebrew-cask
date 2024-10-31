cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "2671f34f0d5485530a4b6c4b61d7661e218d9750b798000f34b40df01c44b599",
         intel: "1b1bfa8b05c7010c6f28e1347d51a085c777dbed3414bd5c89c17520455bfbd2"

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
