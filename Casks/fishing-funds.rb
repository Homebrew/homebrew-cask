cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.0.1"

  if Hardware::CPU.intel?
    sha256 "3de1cc9d2ef307127d148cf312922007f1285f37d90c8aa026f7ab9056395bdf"
  else
    sha256 "b5b35fafa3036eb2146f66ca455e792d77b6573d290e7406122626fc610a3f5e"
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
