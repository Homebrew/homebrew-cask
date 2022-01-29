cask "sabnzbd" do
  version "3.5.0"
  sha256 "e9265b4f26620d2153c76f0548779583b7093ebfe1fede5358361cd48d6852c3"

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
