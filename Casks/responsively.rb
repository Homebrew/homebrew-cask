cask "responsively" do
  version "0.13.2"
  sha256 "d9f88fa9f3ed2ab5810544e15649391de1093aec0974f7dcc782be8bf61eac58"

  # github.com/responsively-org/responsively-app/ was verified as official when first introduced to the cask
  url "https://github.com/responsively-org/responsively-app/releases/download/v#{version}/ResponsivelyApp-#{version}.dmg"
  appcast "https://github.com/responsively-org/responsively-app/releases.atom"
  name "Responsively"
  desc "Modified browser that helps in responsive web development"
  homepage "https://responsively.app/"

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
