cask "responsively" do
  arch arm: "-arm64"

  version "1.7.0"
  sha256 arm:   "c9c605ae9af7019f4667e2eb7fbf4e2870166b8a47da6a44715f026959d1e9dc",
         intel: "17c106bd190349478bc19d118bece3fa4ebf6ed22720890cb8e312f92e741e75"

  url "https://github.com/responsively-org/responsively-app-releases/releases/download/v#{version}/ResponsivelyApp-#{version}#{arch}.dmg",
      verified: "github.com/responsively-org/responsively-app-releases/"
  name "Responsively"
  desc "Modified browser that helps in responsive web development"
  homepage "https://responsively.app/"

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
