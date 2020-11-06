cask "sabnzbd" do
  version "3.1.0"
  sha256 "3dd8970c7cd4aa432e0f91e901aef510807466688b40757109fa51c0688a676e"

  # github.com/sabnzbd/sabnzbd/ was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast "https://github.com/sabnzbd/sabnzbd/releases.atom"
  name "SABnzbd"
  homepage "https://sabnzbd.org/"

  depends_on macos: ">= :yosemite"

  app "SABnzbd.app"

  zap trash: "~/Library/Application Support/SABnzbd"
end
