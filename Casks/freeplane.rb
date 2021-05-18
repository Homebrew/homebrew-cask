cask "freeplane" do
  version "1.9.1"

  if Hardware::CPU.intel?
    sha256 "8dfedf459be9d36fbaf473cee2ac78680a1cb95f58b36d48cfd03c27851a2291"
    url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-intel.dmg",
        verified: "downloads.sourceforge.net/freeplane/Freeplane-#{version}-intel.dmg"

  else
    sha256 "255734becd2d6e2d4781ae0dc24b399c86172e92f3b6359b5c0f4c3f34b72ea7"

    url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-apple.dmg",
        verified: "downloads.sourceforge.net/freeplane/Freeplane-#{version}-apple.dmg"
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
