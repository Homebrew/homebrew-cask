cask "responsively" do
  arch arm: "-arm64"

  version "1.16.0"
  sha256 arm:   "01288a26c94e50559af9f663d9a77a5917240ff0f6c07f98dfa0e944a213a92f",
         intel: "2795b7d962f0f88bbf16f19e3745401778d30e28f475ba2c11d793e2900c3aa7"

  url "https://github.com/responsively-org/responsively-app-releases/releases/download/v#{version}/ResponsivelyApp-#{version}#{arch}.dmg",
      verified: "github.com/responsively-org/responsively-app-releases/"
  name "Responsively"
  desc "Modified browser that helps in responsive web development"
  homepage "https://responsively.app/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
