cask "pile" do
  arch arm: "-arm64"

  version "0.9.4"
  sha256 arm:   "2d833b226b92664c9a2b6a3fccb5fa0b70eb75233d78c67fab66cd7381afacc1",
         intel: "dadfc78b98bac2bff83d567384d5b0d19518bc7e6c8457a406bc700c164fd34c"

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
