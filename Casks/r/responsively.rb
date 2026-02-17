cask "responsively" do
  arch arm: "-arm64"

  version "1.18.0"
  sha256 arm:   "870ef97ae7b23758411841f0c35058ddd36ba2dce51b1f8a48063664dc12d92b",
         intel: "580a2f680bf438456901d5664ddea08bc3291c3ce0ded67ce64234444c1c9f6b"

  url "https://github.com/responsively-org/responsively-app-releases/releases/download/v#{version}/ResponsivelyApp-#{version}#{arch}.dmg",
      verified: "github.com/responsively-org/responsively-app-releases/"
  name "Responsively"
  desc "Modified browser that helps in responsive web development"
  homepage "https://responsively.app/"

  auto_updates true

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
