cask "responsively" do
  arch arm: "-arm64"

  version "1.2.1"
  sha256 arm:   "cf1b9ccc7cb3d7cbe48894c263fb13b8facaed6e9deb734f08aa3991597e99a6",
         intel: "b0880075207f6409bb0de56538dd8d0816fb042dfa64540971812a5d57f1e514"

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
