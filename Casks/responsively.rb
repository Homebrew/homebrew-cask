cask "responsively" do
  version "0.14.1"
  sha256 "056b98377f6711ea48c3cb39573e4b0875212ce458c332c813617b4434c4e470"

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
