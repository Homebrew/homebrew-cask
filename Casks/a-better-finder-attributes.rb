cask "a-better-finder-attributes" do
  version "7.03"
  sha256 "5870cc332809ed5ee0fd8427162aae114990fc477b0d2da6d7a4a5b0785242dc"

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
