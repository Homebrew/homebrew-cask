cask "sabnzbd" do
  version "4.5.2"
  sha256 "1aff73f8f33b0f2366663adde7977c599d231f0b7b9624fa13de05585a5c2b20"

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-macos.dmg",
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
