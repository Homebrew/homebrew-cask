cask "sabnzbd" do
  version "4.3.1"
  sha256 "80d5a88a99e02ad73a8265eb25e8ed72aaebc662a044e8e06cb8216397e17f14"

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg",
      verified: "github.com/sabnzbd/sabnzbd/"
  name "SABnzbd"
  desc "Binary newsreader"
  homepage "https://sabnzbd.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SABnzbd.app"

  zap trash: "~/Library/Application Support/SABnzbd"
end
