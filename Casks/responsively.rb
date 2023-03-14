cask "responsively" do
  arch arm: "-arm64"

  version "1.1.0"
  sha256 arm:   "18c9e27010fececf587448b7c5473161940f818b48144427bd803282930fe5f3",
         intel: "a11d0e577e8c8cb17d6e616d16a786b25426ebb478cb465c2ca9db447c476a17"

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
