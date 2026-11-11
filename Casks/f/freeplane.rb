cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.13.5"
  sha256 arm:   "625c959d7a5a7683f86c4c5fe5f3506fe2faa99f9b088d9056ac63c43aa69c0f",
         intel: "9360837441631f5252d9f2ece4d2453099c05f037fa608ce91feeec754e7c792"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://docs.freeplane.org/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{url=.*?/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  depends_on :macos

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
