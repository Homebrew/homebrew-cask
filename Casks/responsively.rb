cask "responsively" do
  version "0.18.0"
  sha256 "599d44dc2d9e91c2b60e1cc90fa2ed91140591fba148c1ee95bed6eca810184b"

  url "https://github.com/responsively-org/responsively-app/releases/download/v#{version}/ResponsivelyApp-#{version}.dmg",
      verified: "github.com/responsively-org/responsively-app/"
  name "Responsively"
  desc "Modified browser that helps in responsive web development"
  homepage "https://responsively.app/"

  app "ResponsivelyApp.app"

  zap trash: [
    "~/Library/Application Support/ResponsivelyApp",
    "~/Library/Preferences/app.responsively.plist",
  ]
end
