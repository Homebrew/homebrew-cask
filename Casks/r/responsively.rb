cask "responsively" do
  arch arm: "-arm64"

  version "1.17.0"
  sha256 arm:   "884ff051da87c012b3a3fc03c6025a115e1135a493e41fb2871d38466327eccf",
         intel: "31f3ea859045a306dd1eaeb6a89d11e77685c1efabc17ddeb21c20d25b0026a9"

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
