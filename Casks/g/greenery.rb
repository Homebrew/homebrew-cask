cask "greenery" do
  version "0.9.6"
  sha256 "54994bf0394310c5b43b4bfe08ed383a238a06ed593ddf52d85a4f94a8c6a393"

  url "https://github.com/GreenfireInc/Releases.Greenery/releases/download/v#{version}/Greenery.#{version}.zip",
      verified: "github.com/GreenfireInc/Releases.Greenery/"
  name "greenery"
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
