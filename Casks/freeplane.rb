cask "freeplane" do
  version "1.9.5"

  if Hardware::CPU.intel?
    sha256 "4d8231579f93fa1e5c152e372ef3b172a658bc2982dce4a6666a0cbc239b41f3"

    url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-intel.dmg",
        verified: "downloads.sourceforge.net/freeplane/"
  else
    sha256 "0766cc33f245f30a3b85cefb8918c11deff25e1893e99f7eef5a97259a3c64e1"

    url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-apple.dmg",
        verified: "downloads.sourceforge.net/freeplane/"
  end

  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://freeplane.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    strategy :page_match
    regex(%r{stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]apple)?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
