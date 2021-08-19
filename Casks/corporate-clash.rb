cask "corporate-clash" do
  version "1.2.0"
  sha256 "3515ffb183f6681f0f0c941125d3f3dba18119fc03e49bd63eda0492e13b3eac"

  url "https://github.com/CorporateClash/pyside2-releases/releases/download/v#{version}/CorporateClash.dmg",
      verified: "github.com/CorporateClash/pyside2-releases/"
  name "Toontown Corporate Clash Launcher"
  desc "Launcher for Corporate Clash"
  homepage "https://corporateclash.net/"

  app "Corporate Clash Launcher.app"
end
