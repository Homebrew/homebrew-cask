cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.38"
  sha256 arm:   "821bf2d73447a2624a5bbe4ce8abd8f4c730722953bc97e5b33095ca0d77b297",
         intel: "14da0aa989e43e186413ab5aceb6d103e31e4ab3a03026f09012b5bd81119265"

  url "https://github.com/agata/dl.biscuit/releases/download/#{version}/Biscuit-#{version}#{arch}.dmg",
      verified: "github.com/agata/dl.biscuit/"
  name "Biscuit"
  desc "Browser to organise apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/biscuit",
    "~/Library/Logs/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
    "~/Library/Saved Application State/com.eatbiscult.biscult.savedState",
  ]
end
