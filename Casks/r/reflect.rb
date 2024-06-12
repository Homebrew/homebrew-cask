cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.9"
  sha256 arm:   "ff8efff8e0973aa92c2ffec347ae64ac8374314aba19d168af206f5c5637ed07",
         intel: "9d64e50cafb41f73cdec62856bcf12d74c389da0218fea8c5eb99b7710217927"

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
