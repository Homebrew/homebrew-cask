cask "responsively" do
  version "0.14.0"
  sha256 "0506a46e7f655379f207e098fc2238dddb47ef08a275c7821b6bc21b8648db2a"

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
