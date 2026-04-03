cask "biscuit" do
  arch arm: "-arm64"

  version "1.2.35"
  sha256 arm:   "bdf14210f4b7aa9c96eed6257e72b6dcf0e65c892ceae80c0eee3b7964bcc49c",
         intel: "ea2b285266272cf21d33b2d1388a7d068970b1311f955e53a3a379655f1454f0"

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
