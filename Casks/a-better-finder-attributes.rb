cask "a-better-finder-attributes" do
  version "7.19"
  sha256 "1ebda25ac2f5d6372819856f0dbb7b58336e1115aa0d4307eb3b196b9e4bcb10"

  url "https://www.publicspace.net/download/signedABFA#{version.major}.zip"
  name "A Better Finder Attributes"
  desc "File and photo tweaking tool"
  homepage "https://www.publicspace.net/ABetterFinderAttributes/"

  livecheck do
    url "https://www.publicspace.net/app/signed_abfa#{version.major}.xml"
    strategy :sparkle
  end

  app "A Better Finder Attributes #{version.major}.app"

  zap trash: [
    "~/Library/Caches/net.publicspace.abfa#{version.major}",
    "~/Library/Cookies/net.publicspace.abfa#{version.major}.binarycookies",
    "~/Library/Preferences/net.publicspace.abfa#{version.major}.plist",
    "~/Library/Saved Application State/net.publicspace.abfa#{version.major}.savedState",
  ]
end
