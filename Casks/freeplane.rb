cask "freeplane" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "1.10.2"

  if Hardware::CPU.intel?
    sha256 "40001473fa9e66d3fcc9767baa32fccabb4f1da9e53200c41cd654efbc7da44c"
  else
    sha256 "b88d79e4538a42709351f92345e136e823fb3a9be16620144a5e2aa919d27c0d"
  end

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
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
