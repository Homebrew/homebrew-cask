cask "responsively" do
  arch arm: "-arm64"

  version "1.13.0"
  sha256 arm:   "d2359d562ae5bfba89c4d88e784bfd16e82cea7e14adc8ff00848e640033f6a5",
         intel: "f9d8e5d3fd199687eed19de899cb007af9d3f47d5f844a61f241a83bf481df5e"

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
