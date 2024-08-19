cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.4"
  sha256 arm:   "a051e4422fbb2ac39448b32f89acdd217da43f79ac1ce6f01c3740a1ab7798c0",
         intel: "fd699301fa33577d5ab373101c9245e536fd92544040fd7c9e4a411e707d2604"

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
