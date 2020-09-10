cask "jalbum" do
  version "22.0"
  sha256 "badddb6b6575bce1748fbac62fdaf7ae251822eb54f64686df6dde5164c03bf8"

  url "https://download.jalbum.net/download/#{version.major}/MacOSX/jAlbum.dmg"
  appcast "https://jalbum.net/en/software/release-notes",
          must_contain: version.major_minor.chomp(".0")
  name "jAlbum"
  desc "Tool to create photo album websites from local images"
  homepage "https://jalbum.net/"

  app "jAlbum.app"
end
