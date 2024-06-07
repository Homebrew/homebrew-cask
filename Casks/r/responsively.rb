cask "responsively" do
  arch arm: "-arm64"

  version "1.12.0"
  sha256 arm:   "1409d81741674bdf9ff12706681bf613c5ff16504c50a1c60afaf2ee1e324a73",
         intel: "2e33b9754b7fd1b614fba2a00d904a37fa322fa8711ccb108c401c22f13e3953"

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
