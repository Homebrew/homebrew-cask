cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.0.2"

  if Hardware::CPU.intel?
    sha256 "6df350effe876ab6ac5eab9de9eb4a1f88c9181349310608514e964d01c20d6d"
  else
    sha256 "357b05f6b21b8016483e5cd5fc3d077251bef293ede19a2bab2f4cbb28d45078"
  end

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
