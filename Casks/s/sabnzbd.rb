cask "sabnzbd" do
  version "5.0.2"
  sha256 "86e2d74b424aa38bcc493a550e5a40e07cd9d731c9fe51613433bd29879c9d31"

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
