cask "breakaway" do
  version "2.0.1"
  sha256 "df5a3d42558f9cdc778c434f88f7e062032cf33dd751ef01e6109a9848a7f76a"

  url "https://downloads.sourceforge.net/breakaway/breakaway-#{version}.zip",
      verified: "sourceforge.net/breakaway/"
  name "Breakaway"
  desc "Headphone jack observance program"
  homepage "http://mutablecode.com/apps/breakaway.html"

  app "breakaway-#{version}/Breakaway.app"
end
