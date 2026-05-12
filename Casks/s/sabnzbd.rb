cask "sabnzbd" do
  version "5.0.1"
  sha256 "c0d2eb73a5ecd1d886b50b3583b0d93fa23282629f6742da3ea08fe7dcc009d3"

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
