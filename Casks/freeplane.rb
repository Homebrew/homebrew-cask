cask "freeplane" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "1.9.14"

  if Hardware::CPU.intel?
    sha256 "87a981841c758e38ee888b3ae8481684aab748d48974e603c91f5db2c2949026"
  else
    sha256 "d93e894e754fd05480d71f29868238a5a36f851c8e74c634a5e3418e7179ac52"
  end

  url "https://downloads.sourceforge.net/freeplane/Freeplane-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/freeplane/"
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
