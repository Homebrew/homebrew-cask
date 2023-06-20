cask "responsively" do
  arch arm: "-arm64"

  version "1.4.0"
  sha256 arm:   "d110dcf7084d40b8bff934edc2cab0ac82e4b5faf003251144b7f4267fbf98a1",
         intel: "d05212b69eabdeaec91db8f49a72446599f17bba729dea878862c02cbb30a706"

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
