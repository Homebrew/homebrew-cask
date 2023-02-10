cask "responsively" do
  version "1.0.1"
  sha256 "4488eb12af4d453e0224fbc6a875aa400d5a6421fe4e1b9330df464a2e1b37d7"

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
