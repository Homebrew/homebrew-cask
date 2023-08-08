cask "responsively" do
  arch arm: "-arm64"

  version "1.6.0"
  sha256 arm:   "34a8854f214673c8c6c69f08e2e1fcc7e7af04e00e8cb6ddd7ae3ce443ce1895",
         intel: "2c0387988c2bec4aedd6578ce3906ac86af37b1a2fe6052ed47ac0932e8a9633"

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
