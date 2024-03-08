cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.2.2"
  sha256 arm:   "eb9d2d91a2d84b703c791244ace4b644efe6c181720afcb57944c49b00dbcecb",
         intel: "006569023ddd5653c83fc0927463fa6ba7bafeb2b419c5936aa276c0552e32bf"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
