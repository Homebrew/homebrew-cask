cask "responsively" do
  arch arm: "-arm64"

  version "1.7.1"
  sha256 arm:   "c4b76812fcf43a534adfcedc8b2ad1a4441b778f5a1942df5822de8d6437fabd",
         intel: "7372a1f14f881c69b8c799f5b76c84d6984f9c814886dfbb466d8edb9300a33a"

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
