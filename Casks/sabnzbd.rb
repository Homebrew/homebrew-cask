cask "sabnzbd" do
  version "3.0.1"
  sha256 "523b69a2554ec26ca6e9f86aead87f879ebd5011dae076cc9b48a9abed7b42ec"

  # github.com/sabnzbd/sabnzbd/ was verified as official when first introduced to the cask
  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast "https://github.com/sabnzbd/sabnzbd/releases.atom"
  name "SABnzbd"
  homepage "https://sabnzbd.org/"

  depends_on macos: ">= :yosemite"

  app "SABnzbd.app"

  zap trash: "~/Library/Application Support/SABnzbd"
end
