cask "sabnzbd" do
  version "4.0.3"
  sha256 "f32c58257c6685273453dc5f1de06e8b6a8daeb0ef7af4b9b9955e5b1c67d5e9"

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
