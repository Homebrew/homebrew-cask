cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.2"
  sha256 arm:   "f26dabb90bafeae9c2f4cfb62704a0c89f1050ced814f89a201519858dccfb0a",
         intel: "9f6248b736eae0cae0ee36902c316d86a5a0fac28f33c4153960577d85e9b268"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://docs.freeplane.org/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{/freeplane%20stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
    strategy :page_match
  end

  depends_on macos: ">= :el_capitan"

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
