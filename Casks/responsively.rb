cask "responsively" do
  version "0.9.0"
  sha256 "f330dc9134b96a21bac77a43f240392391973b4acf82b6b1840ba6b962addde8"

  # github.com/manojVivek/responsively-app/ was verified as official when first introduced to the cask
  url "https://github.com/manojVivek/responsively-app/releases/download/v#{version}/ResponsivelyApp-#{version}.dmg"
  appcast "https://github.com/manojVivek/responsively-app/releases.atom"
  name "Responsively"
  homepage "https://manojvivek.github.io/responsively-app/"

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
