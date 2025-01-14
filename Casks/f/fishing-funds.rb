cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.4.0"
  sha256 arm:   "57a843f0c98e2cadf77e862faf4a59a4609ec41b23ea22f9d034bfed5802feed",
         intel: "c66c1c94514ea07a928fcf7ec054dd30ce26003c5e6e07e34f3d627a8978c08c"

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
