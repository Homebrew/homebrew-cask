cask "freeplane" do
  arch arm: "apple", intel: "intel"

  version "1.12.14"
  sha256 arm:   "cec0b14e8251884860aef1f881391d5d5c4d6ef0d31c7e02a253f2cdbadfc524",
         intel: "33bda56b03251f39713a75ce792bc8ee5a5efba142afdb73b87deaa9b875ea4e"

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
