cask "isubtitle" do
  version "3.4.5,48"
  sha256 "6272f96c31ed4fb1118e0c95333afce7fffab063d57a861a36b3f56d811442b1"

  url "https://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version.before_comma}.zip"
  name "iSubtitle"
  desc "Inject subtitle tracks, chapter markers and metadata into your media"
  homepage "https://www.bitfield.se/isubtitle/"

  livecheck do
    url "https://www.bitfield.se/isubtitle#{version.major}/changelog.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "iSubtitle.app"
end
