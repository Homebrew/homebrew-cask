cask "a-better-finder-attributes" do
  version "7.04"
  sha256 "de991536663d81069d2599a7adcd0e4fd1ed2228bf71b18e7f390f859b483f72"

  url "https://www.publicspace.net/download/signedABFA#{version.major}.zip"
  appcast "https://www.publicspace.net/app/signed_abfa#{version.major}.xml"
  name "A Better Finder Attributes"
  desc "File and photo tweaking tool"
  homepage "https://www.publicspace.net/ABetterFinderAttributes/"

  app "A Better Finder Attributes #{version.major}.app"

  zap trash: [
    "~/Library/Caches/net.publicspace.abfa#{version.major}",
    "~/Library/Cookies/net.publicspace.abfa#{version.major}.binarycookies",
    "~/Library/Preferences/net.publicspace.abfa#{version.major}.plist",
    "~/Library/Saved Application State/net.publicspace.abfa#{version.major}.savedState",
  ]
end
