cask "responsively" do
  arch arm: "-arm64"

  version "1.2.2"
  sha256 arm:   "6e93c83902774181c0bfd7a575c70695314cd782fd14b3d01ee58f0b38f579c8",
         intel: "7b1484835b05fe4e25c93738f7cbe269845fd4e3870792a1e74c9bb644c6c5a1"

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
