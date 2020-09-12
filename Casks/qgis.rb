cask "qgis" do
  version "3.14.16"
  sha256 "e89f7fd68b8f75bbd57be672026ce3f86ec873f3ec2829b1a2339d76ffcf7980"

  url "https://qgis.org/downloads/macos/qgis-macos-pr.dmg"
  appcast "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum",
          must_contain: version.dots_to_underscores
  name "QGIS"
  desc "Free and Open Source Geographic Information System"
  homepage "https://www.qgis.org/"

  app "QGIS#{version.major_minor}.app"
end
