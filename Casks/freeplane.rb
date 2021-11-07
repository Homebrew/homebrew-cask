cask "freeplane" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "1.9.10"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  if Hardware::CPU.intel?
    sha256 "67b6ee390800ce93ec7aa7255f5a7669efda41ce904d164af623c20d5c71d0c2"
  else
    sha256 "375895d3087f69b235d8f5d3c3fa0294abb3fc5999e32941568e342bd47264ed"
  end

  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://www.freeplane.org/wiki/index.php/Home"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    strategy :page_match
    regex(%r{stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]apple)?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
