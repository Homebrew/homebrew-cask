cask "quickhash" do
  version "3.2.0,2020.08"
  sha256 "8449c5042dd0061515ca5cc83ee24b487a228c7f9263ea44330d3f008cbc1dec"

  url "https://quickhash-gui.org/wp-content/uploads/#{version.after_comma.major}/#{version.after_comma.minor}/QuickHash-GUI-OSX-v#{version.before_comma}.zip"
  appcast "https://www.quickhash-gui.org/downloads/"
  name "Quickhash"
  homepage "https://www.quickhash-gui.org/"

  app "Quickhash-GUI.app"
end
