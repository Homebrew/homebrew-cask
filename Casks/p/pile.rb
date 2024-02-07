cask "pile" do
  arch arm: "-arm64", intel: ""

  version "0.9.3"
  sha256 arm:   "00655673917f2029587e0bb1930bf2fc145f2717a271ae2b8456c0521633191f",
         intel: "415a74a725c1a696f3a869d0fe9f09ee548b63d36a43369afe0bd193d0e8b5f9"

  url "https://github.com/UdaraJay/Pile/releases/download/v#{version}/Pile-#{version}#{arch}.dmg",
      verified: "github.com/UdaraJay/Pile/"
  name "Pile"
  desc "Digital journaling app"
  homepage "https://udara.io/pile/"

  # auto-updates are coming with 1.0.0
  # https://github.com/UdaraJay/Pile/issues/40#issuecomment-1873501788
  # auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Pile.app"

  zap trash: "~/Library/Preferences/pile.un.ms.plist"
end
