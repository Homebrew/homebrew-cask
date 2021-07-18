cask "isubtitle" do
  version "3.4.3,42"
  sha256 "e3eafe394b9447451e791cfe1c2a498ebf09931b807585f77a3401e4f15f0410"

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
