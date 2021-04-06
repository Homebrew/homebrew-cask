cask "qlab" do
  version "4.6.8"
  sha256 "32a88ee6bd79951feb5e3b90676fcfbfd0d9752b81f89bd570d5295402661412"

  url "https://qlab.app/downloads/archive/QLab-#{version}.zip"
  appcast "https://qlab.app/appcast/v#{version.major}/"
  name "QLab"
  homepage "https://qlab.app/"

  auto_updates true

  app "QLab.app"
end
