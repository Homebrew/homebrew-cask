cask "asc-timetables" do
  version "2020.7.1"
  sha256 "94f8054af96ef352ab0da4a107483a0fc234d4936702e815b23e44fc98e22c6f"

  url "https://www.asctimetables.com/download/asctimetables_#{version.dots_to_underscores}.dmg"
  appcast "https://www.asctimetables.com/",
          must_contain: version.dots_to_underscores
  name "aSc TimeTables"
  homepage "https://www.asctimetables.com/"

  app "aSc TimeTables.app"
end
