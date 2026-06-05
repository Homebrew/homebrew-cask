cask "sabnzbd" do
  version "5.0.3"
  sha256 "c1a066f598b635d843f33ac9f173223272a1f338a4f9f920a1ec02fd9407fb26"

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-macos.dmg",
      verified: "github.com/sabnzbd/sabnzbd/"
  name "SABnzbd"
  desc "Binary newsreader"
  homepage "https://sabnzbd.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SABnzbd.app"

  zap trash: "~/Library/Application Support/SABnzbd"
end
