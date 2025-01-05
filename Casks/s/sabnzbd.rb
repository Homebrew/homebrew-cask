cask "sabnzbd" do
  version "4.4.1"
  sha256 "135d06e85663cd561b270a60c606971ab98b27e93e66ebac34a385608f8a2004"

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg",
      verified: "github.com/sabnzbd/sabnzbd/"
  name "SABnzbd"
  desc "Binary newsreader"
  homepage "https://sabnzbd.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "SABnzbd.app"

  zap trash: "~/Library/Application Support/SABnzbd"
end
