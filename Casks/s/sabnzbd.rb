cask "sabnzbd" do
  version "4.5.0"
  sha256 "a2188e62e0ac2a16ec9ccc275c2e0b14bffb4a4a2696df0acb47292af8bb33e7"

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
