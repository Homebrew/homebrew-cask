cask "orange" do
  version "3.27.0"
  sha256 "8c3ef825161a5d2ccb9079ec888bb1810c341e66aa2524dd3cac18750127f302"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.7.6.dmg"
  appcast "https://github.com/biolab/orange3/releases.atom"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orange.biolab.si/"

  app "Orange#{version.major}.app"
end
