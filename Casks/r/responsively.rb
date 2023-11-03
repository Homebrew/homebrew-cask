cask "responsively" do
  arch arm: "-arm64"

  version "1.9.0"
  sha256 arm:   "beb69910f12ad194d797016f6011d34fb875bc9a389ecbbfd3960753ae5beb57",
         intel: "cb63fa5d0da37ca2142c0bc7b1c6174805e6e599cf6ec7243cdda7be7675e8de"

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
