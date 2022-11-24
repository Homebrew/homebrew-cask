cask "fishing-funds" do
  arch arm: "-arm64"

  version "6.3.0"
  sha256 arm:   "58e6bcdda7679a9f34675c230e6308eb0b439ebe800e4598885a4df87d3f61f4",
         intel: "17020a10488e9d6372eefe4e67459ddeaadd4a9e45ea969237a41039c35b58c9"

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
