cask "jalbum" do
  version "23"
  sha256 "a51124936060179e92aed255f41ef646371e954368180c47a000a74c50fb33a9"

  url "https://download.jalbum.net/download/#{version}/MacOSX/jAlbum.dmg"
  appcast "https://jalbum.net/en/software/release-notes",
          must_contain: version.major_minor.chomp(".0")
  name "jAlbum"
  desc "Tool to create photo album websites from local images"
  homepage "https://jalbum.net/"

  app "jAlbum.app"
end
