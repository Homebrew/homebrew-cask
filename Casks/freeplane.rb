cask "freeplane" do
  arch = Hardware::CPU.intel? ? "intel" : "apple"

  version "1.9.12"

  if Hardware::CPU.intel?
    sha256 "027294b0977adb927d3c8ff3bcaa91e46ca099390587dcf69e594ca085982aba"
  else
    sha256 "6679ce4c1cb02a44744b7ae6061d3ef83ea920264b0fa47546384ccffc4cec11"
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
