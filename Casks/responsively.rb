cask "responsively" do
  arch arm: "-arm64"

  version "1.0.2"
  sha256 arm:   "9031fdc12f1d0d7e5002e714dfdfabf345c46dc5711657cdf7570b69a22c3a54",
         intel: "9438c0649c008f7872f8d9784a63de083f1d04e1ddc3528d10c7e8c2fc82e2c1"

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
