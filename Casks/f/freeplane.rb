cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.13.4"
  sha256 arm:   "109885a01fb229bb7789469d79f04227561a4d91b3700dd7b958261449623981",
         intel: "d5449fca0a85b5efddeb7f6650b3665734c7e3c2c007334c85033f49a30d28d0"

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
