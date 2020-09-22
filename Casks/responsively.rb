cask "responsively" do
  version "0.13.0"
  sha256 "c0a387f7e0a53e5a8db5f7da717716cb6ec58e0fd3cf699d08c891254b17e241"

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
