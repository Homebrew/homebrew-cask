cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.16"
  sha256 arm:   "e8ff21c9e3a5ca2108b9cf3ac460fa2ee8716ef61edc4affaa1c1d3a0fcfff5e",
         intel: "2da23693d52a2f56fd4944c8bcf597af81523927a9db3105c3a88b65b575f9a7"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://docs.freeplane.org/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{url=.*?/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
