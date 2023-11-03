cask "greenery" do
  version "0.9.3"
  sha256 "cd2b9ae7dd26144d6147536500ce1ccaa2f8b0b5e20f023a7229615c37648fe1"

  url "https://github.com/GreenfireInc/homebrew-greenery/releases/download/v#{version}/Greenery.zip"
  name "greenery"
  desc "Cryptocurrency bookkeeping and accounting wallet"
  homepage "https://github.com/GreenfireInc/homebrew-greenery/"

  app "Greenery.app"

  zap trash: [
    "~/Library/Application Support/Greenery",
    "~/Library/Preferences/com.greenery.app.plist",
    "~/Library/Saved Application State/com.greenery.app.savedState",
  ]
end
