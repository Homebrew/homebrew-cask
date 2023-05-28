cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.11.3"
  sha256 arm:   "aabc423bf3e8654a7fd872d12860f19bb45458a3426ff9d71280776efa84395b",
         intel: "88312253aca6451bcff932051c6d9921be5f09ab964cf0cec845f790c3959889"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://www.freeplane.org/wiki/index.php/Home"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    regex(%r{/freeplane%20stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
    strategy :page_match
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
