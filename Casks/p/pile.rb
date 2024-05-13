cask "pile" do
  arch arm: "-arm64"

  version "0.9.7"
  sha256 arm:   "acff68e8aa891895de6cfedfa477163c7045720a2ef8509154044fedb876b98f",
         intel: "ad6bfd5f5076b9c226a37f55032f20e1ebd1b6b73add54db3e1b57200067dbcc"

  url "https://github.com/UdaraJay/Pile/releases/download/v#{version}/Pile-#{version}#{arch}.dmg",
      verified: "github.com/UdaraJay/Pile/"
  name "Pile"
  desc "Digital journaling app"
  homepage "https://udara.io/pile/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Pile.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/pile.un.ms.sfl*",
    "~/Library/Application Support/pile",
    "~/Library/Preferences/pile.un.ms.plist",
    "~/Library/Saved Application State/pile.un.ms.savedState",
    "~/Piles",
  ]
end
