cask "macgdbp" do
  version "2.0.3"
  sha256 "1f80a3868ccb1023c602337a925b964aebde9da7c90f3c27679f5becd5c6d071"

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version}.zip"
  appcast "https://www.bluestatic.org/versioncast.php/macgdbp"
  name "MacGDBp"
  homepage "https://www.bluestatic.org/software/macgdbp/"

  app "MacGDBp.app"
end
