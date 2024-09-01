cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.5"
  sha256 arm:   "be54bd7719bb82dbbd652eaeb1cda2eb459629602dd2b828dea7630fa0f9f378",
         intel: "251526a4793ed0a1941098c3558775a3a45f0243ff818c1a3e11378498c21034"

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
