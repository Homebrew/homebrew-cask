cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.5.0"
  sha256 arm:   "f21e6b0a15de1d125cff9b0c8baef16b9a7d265e8ea5741e238543ef1a5f2097",
         intel: "95268a284a78ce712a31e2adbf3f972e782121b4597ee8a3b02f6f33690ef9d3"

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
