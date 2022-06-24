cask "responsively" do
  version "0.19.0"
  sha256 "94206b9fe2c6ec72b0ae4ac139f1309bd4e1bdfceea02819706e041532a8c2e7"

  url "https://github.com/responsively-org/responsively-app/releases/download/v#{version}/ResponsivelyApp-#{version}.dmg",
      verified: "github.com/responsively-org/responsively-app/"
  name "Responsively"
  desc "Modified browser that helps in responsive web development"
  homepage "https://responsively.app/"

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
