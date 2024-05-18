cask "responsively" do
  arch arm: "-arm64"

  version "1.11.0"
  sha256 arm:   "3dd93d3fc50a1653df58d455a26e318793c257e4898e5a70b4d96991282cb485",
         intel: "b1368d8f54dc880a7cf4372db9027ad54656d1a3fa68212321b361c12d848a71"

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
