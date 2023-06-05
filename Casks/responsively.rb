cask "responsively" do
  arch arm: "-arm64"

  version "1.3.0"
  sha256 arm:   "e4a7395cc209ca79b8da87b1303054e04f45b6b552a0cb15f891ff833626b599",
         intel: "90088359eae9d75f77e2421d13f4142edd122aabe3cbf936a92e7b07dc228f72"

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
