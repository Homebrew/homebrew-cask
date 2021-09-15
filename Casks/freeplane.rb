cask "freeplane" do
  version "1.9.7"

  if Hardware::CPU.intel?
    sha256 "5a008c4c99ba29a730feed83b793d6909834623f31cd3a6bf775ebaee63f7887"

    url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-intel.dmg",
        verified: "downloads.sourceforge.net/freeplane/"
  else
    sha256 "8c277d86eca3aca839da1183d6238f77fc3aa9f371c575f3d03db5a5ca38308b"

    url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-apple.dmg",
        verified: "downloads.sourceforge.net/freeplane/"
  end

  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://freeplane.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    strategy :page_match
    regex(%r{stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]apple)?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
