cask "freeplane" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "1.9.13"

  if Hardware::CPU.intel?
    sha256 "59a405906113c3dfe0a8746fb270ee772de8fcde8b04d78b0660ef324b0aa089"
  else
    sha256 "4f5dbccfec52c25b51653cb460148edc400b54c6c402fbdcc03cc198c36bc56b"
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
