cask "isubtitle" do
  version "3.3.2"
  sha256 "42f7f0bcd809693c62b9d07340723768e3844fe653000515a33d9504edbfe89e"

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
  name "iSubtitle"
  homepage "https://www.bitfield.se/isubtitle/"

  depends_on macos: ">= :sierra"

  app "iSubtitle.app"
end
