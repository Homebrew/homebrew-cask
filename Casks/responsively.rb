cask "responsively" do
  version "0.15.0"
  sha256 "db01fb5e333056fe6cf4945d677b57190e82f6e26d4524277ef06c3df333f135"

  url "https://github.com/responsively-org/responsively-app/releases/download/v#{version}/ResponsivelyApp-#{version}.dmg",
      verified: "github.com/responsively-org/responsively-app/"
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
