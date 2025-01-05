cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.3.0"
  sha256 arm:   "3cbbc103cde23927dd11ae172970155cc4ab98ba56c7ae633253144dfe7c6947",
         intel: "7c90fbbe64da4eb9197455041399bdfa463d070916490d29d17099b2fdcf5c7e"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  depends_on macos: ">= :big_sur"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
