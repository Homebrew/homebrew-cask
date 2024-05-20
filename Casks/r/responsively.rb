cask "responsively" do
  arch arm: "-arm64"

  version "1.11.1"
  sha256 arm:   "8dd037c93cfecf5b7bda1f05ab8740308460c5363c9e05c4de19d9fdc6c90c7b",
         intel: "ae8b06ee5fe24c23b09aa13567839da5a9d31570b603cedc7c947d47efe48cdb"

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
