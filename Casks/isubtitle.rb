cask "isubtitle" do
  version "3.4.2,41"
  sha256 "8d9b2c04fb4ae7fdc1f46f3f60aed7e8600de006d43cdf24a6938f9fa5786eb1"

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
