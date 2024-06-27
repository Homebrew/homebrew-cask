cask "foldit" do
  version "39"
  sha256 :no_check

  url "https://files.ipd.uw.edu/pub/foldit/Foldit-macos_x64.dmg",
      verified: "files.ipd.uw.edu/pub/foldit/"
  name "Foldit"
  desc "Protein folding computer game"
  homepage "https://fold.it/"

  livecheck do
    url "https://fold.it/releases"
    regex(/<h2[^>]*?>[^<]*?(\d+)/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Foldit.app"

  zap trash: "~/Library/Saved Application State/edu.washington.foldit.savedState"
end
