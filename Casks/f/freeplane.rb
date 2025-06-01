cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.11"
  sha256 arm:   "8a4f353dbb287cd04a735e7d3b89944c6cc63852a8f4bda9a74908fbd322c1e0",
         intel: "14882b286d166a8fb49214cce29acf661083b74ed11631e206bc827eb67d0e07"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://docs.freeplane.org/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{url=.*?/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  depends_on macos: ">= :el_capitan"

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
