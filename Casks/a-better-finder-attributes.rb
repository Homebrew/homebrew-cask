cask "a-better-finder-attributes" do
  version "6.23"
  sha256 "9340d55ce1433836942424648cff0accdb70445f2cbd81a219d7c8eca6b74877"

  url "https://www.publicspace.net/download/ABFAX.dmg"
  appcast "https://www.publicspace.net/app/signed_abfa#{version.major}.xml"
  name "A Better Finder Attributes"
  homepage "https://www.publicspace.net/ABetterFinderAttributes/"

  app "A Better Finder Attributes #{version.major}.app"

  zap trash: [
    "~/Library/Caches/net.publicspace.abfa#{version.major}",
    "~/Library/Cookies/net.publicspace.abfa#{version.major}.binarycookies",
    "~/Library/Preferences/net.publicspace.abfa#{version.major}.plist",
    "~/Library/Saved Application State/net.publicspace.abfa#{version.major}.savedState",
  ]
end
