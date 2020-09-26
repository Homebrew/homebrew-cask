cask "a-better-finder-attributes" do
  version "7.00"
  sha256 "69c5b4815b2075a6924f433c2f7b9c9000537105a31d9bc03bc71251e098cbbe"

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
