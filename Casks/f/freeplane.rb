cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.13.3"
  sha256 arm:   "f6c8639cbe91ca431c84b44eb64ab0b3f984454ec0203e1132e49586265a2347",
         intel: "5946877c7f27c1932daf10ff456a57cfe07201f727ab5d53a527dd1d3306ec44"

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
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
