cask "responsively" do
  arch arm: "-arm64"

  version "1.10.0"
  sha256 arm:   "4a5956190e9602c9484dc6f958e2187a5213746cb33362900503442aadf6ed93",
         intel: "9c4a3b8127210e0b969eead4920787a4d9044eb49773d3c888aac627d6dcf49c"

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
