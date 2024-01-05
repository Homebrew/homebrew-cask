cask "sabnzbd" do
  version "4.2.1"
  sha256 "2515533d5657626e42e6de6177bbe6863ccebfe9deb828c9871d9ddce3d6cae4"

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
