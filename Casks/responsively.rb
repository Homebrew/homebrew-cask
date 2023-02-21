cask "responsively" do
  arch arm: "-arm64"

  version "1.0.3"
  sha256 arm:   "279f8b8b8d2d9faa31a9a1dfb9c31fcbf43fd6103805db5190e710fdf9b14785",
         intel: "387b1a11f44dc163a28b3106114299aec238bceac8e4c4f2719248efcb865c0b"

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
