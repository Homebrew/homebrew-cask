cask "responsively" do
  version "0.10.0"
  sha256 "8a7a2d9e488162e72fe49e793dcb1a49d5aad0638ec3eb16b8e5fc6cdb53c8fc"

  # github.com/responsively-org/responsively-app/ was verified as official when first introduced to the cask
  url "https://github.com/responsively-org/responsively-app/releases/download/v#{version}/ResponsivelyApp-#{version}.dmg"
  appcast "https://github.com/responsively-org/responsively-app/releases.atom"
  name "Responsively"
  homepage "https://responsively.app/"

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
