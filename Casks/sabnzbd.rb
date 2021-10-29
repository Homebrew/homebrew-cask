cask "sabnzbd" do
  version "3.4.2"
  sha256 "299643d81d66702efa8b836031400b8302f48b53c8e09825204e18ac00bba2de"

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg",
      verified: "github.com/sabnzbd/sabnzbd/"
  name "SABnzbd"
  desc "Binary newsreader"
  homepage "https://sabnzbd.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :yosemite"

  app "SABnzbd.app"

  zap trash: "~/Library/Application Support/SABnzbd"
end
