cask "sabnzbd" do
  version "4.2.3"
  sha256 "ce1d3234a8da05971fd2ba6be5622d22be7b839c05b61f33915cba5a2793a3c8"

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
