cask "freeplane" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "1.9.11"

  if Hardware::CPU.intel?
    sha256 "b9d989832db053e7b0892f1d2778a77c9444ae5b45beceb5746b15245c08cf64"
  else
    sha256 "2332e15f6352871af86f90ea22221c0d905c88ba815c5653c29d425e95058c1a"
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
