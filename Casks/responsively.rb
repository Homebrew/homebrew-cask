cask "responsively" do
  arch arm: "-arm64"

  version "1.5.0"
  sha256 arm:   "59e0c459e950dbdbad4ac40455fd92644b0beb26399fb2c01461ea4d76a84576",
         intel: "3390b604dbdc024b0f20060d569054a22c1722bc06cbc7aa9b9d8e62ffa8e7ef"

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
