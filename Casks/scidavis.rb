cask "scidavis" do
  version "1.26"
  sha256 "bc49df3fc712cdcfee7804bf5e6b6e3d378e4178e07e6f664e05795b93829a1b"

  url "https://downloads.sourceforge.net/scidavis/scidavis-#{version}-mac-dist.dmg",
      verified: "downloads.sourceforge.net/scidavis/"
  name "scidavis"
  homepage "https://scidavis.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/scidavis/rss.xml"
    regex(%r{/scidavis-(\d+(?:\.\d+)*)-mac-dist\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "scidavis.app"
end
