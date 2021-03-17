cask "jalbum" do
  version "23.1"
  sha256 "c5b2eb6be8ee3e57a6adc0b08a869b195c3bb9b358879edd8a0a30f0c0e06962"

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast "https://jalbum.net/en/software/release-notes",
          must_contain: version.major_minor.chomp(".0")
  name "jAlbum"
  desc "Tool to create photo album websites from local images"
  homepage "https://jalbum.net/"

  app "jAlbum.app"
end
