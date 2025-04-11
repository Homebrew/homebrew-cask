cask "sabnzbd" do
  version "4.5.1"
  sha256 "92489060353c5e16cd5a40548b54324b0cdcead0a2ab8516a26fd7c28f68ce2b"

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
