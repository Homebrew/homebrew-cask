cask "responsively" do
  arch arm: "-arm64"

  version "1.17.1"
  sha256 arm:   "e7f0e6127182c5a749c6cde485d13258bb75062aad940b4ae3bdd69c90e09549",
         intel: "06eab12111dd28b1e40d5265f7827c12928c5e0d45cf370045e12e07bd950140"

  url "https://github.com/responsively-org/responsively-app-releases/releases/download/v#{version}/ResponsivelyApp-#{version}#{arch}.dmg",
      verified: "github.com/responsively-org/responsively-app-releases/"
  name "Responsively"
  desc "Modified browser that helps in responsive web development"
  homepage "https://responsively.app/"

  auto_updates true

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
