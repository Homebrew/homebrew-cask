cask "expresslrs-configurator" do
  version "1.7.7"
  sha256 "0b42dab2aa3a7c72dfc79ac74ac55e8fa9fdf993be666d2377a0d8429b6092aa"

  url "https://github.com/ExpressLRS/ExpressLRS-Configurator/releases/download/v#{version}/ExpressLRS-Configurator-#{version}.dmg",
      verified: "github.com/ExpressLRS/ExpressLRS-Configurator/"
  name "ExpressLRS Configurator"
  desc "Cross platform configuration & build tool for the ExpressLRS radio link"
  homepage "https://www.expresslrs.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ExpressLRS Configurator.app"

  uninstall quit: "org.expresslrs.configurator"

  zap trash: [
    "~/Library/Application Support/ExpressLRS Configurator",
    "~/Library/Preferences/org.expresslrs.configurator.plist",
  ]
end
