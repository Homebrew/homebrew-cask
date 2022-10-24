cask "a-better-finder-attributes" do
  version "7.24"
  sha256 "a1b67931ee4a748bfa2a9a2b01f635b9aa84c415c37c70123abe7595bd99c963"

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
