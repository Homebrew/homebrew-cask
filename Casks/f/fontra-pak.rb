cask "fontra-pak" do
  version :latest
  sha256 :no_check

  url "https://fontra-download.black-foundry.com/FontraPak.dmg",
      verified: "fontra-download.black-foundry.com/"
  name "Fontra Pak"
  desc "Cross-platform bundled Fontra server for local desktop use"
  homepage "https://fontra.xyz/"

  depends_on macos: ">= :big_sur"

  app "Fontra Pak.app"

  zap trash: "~/Library/Saved Application State/xyz.fontra.fontra-pak.savedState"
end
