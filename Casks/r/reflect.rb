cask "reflect" do
  arch arm: "arm64", intel: "x64"

  version "2.1.3"
  sha256 arm:   "708506b0d046222e2991e7e0f159608da9530e2e47260804441bc1a97faf4e20",
         intel: "0a689abb41bb79caf4feabd061ba0c41a021e38c3a84a895cb5b4eebcf1741c0"

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
