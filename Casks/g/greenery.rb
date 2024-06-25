cask "greenery" do
  version "0.9.9"
  sha256 "98bc999abf14177d9f312b20751a40da7a6cfddf7f788eaa1db74260515ad3a9"

  url "https://github.com/GreenfireInc/Releases.Greenery/releases/download/v#{version}/Greenery.#{version}.zip",
      verified: "github.com/GreenfireInc/Releases.Greenery/"
  name "Greenery"
  desc "Cryptocurrency bookkeeping and accounting wallet"
  homepage "https://www.greenery.finance/"

  depends_on macos: ">= :high_sierra"

  app "Greenery.app"

  zap trash: [
    "~/Library/Application Support/Greenery",
    "~/Library/Preferences/com.greenery.app.plist",
    "~/Library/Saved Application State/com.greenery.app.savedState",
  ]
end
