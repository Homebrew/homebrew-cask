cask "jalbum" do
  version "22.1"
  sha256 "ce78ef4b3ac2a1c5106b8400d2d80943dc0655f08b9f36e35408ab65129392f8"

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast "https://jalbum.net/en/software/release-notes",
          must_contain: version.major_minor.chomp(".0")
  name "jAlbum"
  desc "Tool to create photo album websites from local images"
  homepage "https://jalbum.net/"

  app "jAlbum.app"
end
