cask "sabnzbd" do
  version "5.1.3"
  sha256 "a6ec86a423206a0780b8e204ac35aae6ada43d23c35fd0291f4b239e94446c5a"

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-macos.dmg"
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
