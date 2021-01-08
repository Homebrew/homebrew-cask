cask "resolutionator" do
  version "2.0.0"
  sha256 "d3c9b2bd7fba21c6d9347f437b7cd1e3c8bf1079c6bf18ad2d6f095a2755e50b"

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.no_dots}.dmg"
  appcast "https://manytricks.com/resolutionator/releasenotes/?rref=appcast",
          must_contain: version.major_minor
  name "Resolutionator"
  homepage "https://manytricks.com/resolutionator/"

  auto_updates true

  app "Resolutionator.app"
end
