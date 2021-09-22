cask "freeplane" do
  version "1.9.8"

  if Hardware::CPU.intel?
    sha256 "ef2a0b79d2fa1bf8e9fb9913212506e735a3343bc4d801eeb9718e4e97183c1d"

    url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-intel.dmg",
        verified: "downloads.sourceforge.net/freeplane/"
  else
    sha256 "ec0546dc6540e5e7da274c99419f87498a82f39feca3d283c938f562f3be54f5"

    url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-apple.dmg",
        verified: "downloads.sourceforge.net/freeplane/"
  end

  name "Freeplane"
  desc "Mind mapping and knowledge management software"
  homepage "https://www.freeplane.org/wiki/index.php/Home"

  livecheck do
    url "https://sourceforge.net/projects/freeplane/rss?path=/freeplane%20stable"
    strategy :page_match
    regex(%r{stable/Freeplane[._-]v?(\d+(?:\.\d+)+)(?:[._-]apple)?\.dmg}i)
  end

  app "Freeplane.app"

  zap trash: "~/Library/Saved Application State/org.freeplane.launcher.savedState"
end
