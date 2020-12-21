cask "isubtitle" do
  version "3.3.2,36"
  sha256 "42f7f0bcd809693c62b9d07340723768e3844fe653000515a33d9504edbfe89e"

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version.before_comma}.zip"
  name "iSubtitle"
  homepage "https://www.bitfield.se/isubtitle/"

  livecheck do
    url "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "iSubtitle.app"
end
