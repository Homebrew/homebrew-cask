cask "a-better-finder-attributes" do
  version "7.05"
  sha256 "8887aa386b6154dc2f1f066752cecc543df1a28daef85620376baa94eff0949d"

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
