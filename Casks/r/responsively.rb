cask "responsively" do
  arch arm: "-arm64"

  version "1.8.0"
  sha256 arm:   "801e868f5f47ffa9903318515c090592735dabd97dab79d4f0797ae004d6c20c",
         intel: "9aef2af6ec3a4f07c9f46b41e2d518af644228ddbc58f6a61f423c7cfd349c4c"

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
