cask "sabnzbd" do
  version "3.0.2"
  sha256 "bc6dd19f888b6f3d28c9669c187be67d8efef2b0cc7685e18e1190830eb6bcc1"

  # github.com/sabnzbd/sabnzbd/ was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast "https://github.com/sabnzbd/sabnzbd/releases.atom"
  name "SABnzbd"
  homepage "https://sabnzbd.org/"

  depends_on macos: ">= :yosemite"

  app "SABnzbd.app"

  zap trash: "~/Library/Application Support/SABnzbd"
end
