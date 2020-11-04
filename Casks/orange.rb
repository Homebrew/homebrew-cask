cask "orange" do
  version "3.27.1"
  sha256 "156d434ce8fb392a3b645ff217dd9623a1813f65fb262056b6c8cf2d1e3b0865"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.7.6.dmg"
  appcast "https://github.com/biolab/orange3/releases.atom"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orange.biolab.si/"

  app "Orange#{version.major}.app"
end
