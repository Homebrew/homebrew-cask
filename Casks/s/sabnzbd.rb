cask "sabnzbd" do
  version "5.1.2"
  sha256 "5b8db477635e7d165fd11ec122775182838258b02882349ec3534f655ad0a7f9"

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
