cask "responsively" do
  version "0.19.1"
  sha256 "d3ebafd5bce9a0d6ff680e196ba1fb0325f40ebffb998c284ba647d64748ea67"

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
