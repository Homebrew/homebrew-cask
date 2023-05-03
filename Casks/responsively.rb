cask "responsively" do
  arch arm: "-arm64"

  version "1.2.0"
  sha256 arm:   "2ad06d4383e5188b2e45283cbc8ae676fd8cb7cc57e4b8cdd260da52442e0be0",
         intel: "32362dcada974de73f3b9f22d717b26a418426d61475f5f53c765053bd3d2f8f"

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
