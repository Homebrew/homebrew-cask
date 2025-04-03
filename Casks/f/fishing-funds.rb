cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.4.2"
  sha256 arm:   "136ab036e9e25dc4025a45ca427a46d9961cfcec5ca727f0be5169575533b698",
         intel: "47e6898388c8e8e5772b1c3f5e1e931a8c2cb03d0c6c2696c3600082b2b4513a"

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
