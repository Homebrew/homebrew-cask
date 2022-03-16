cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.7.1"

  if Hardware::CPU.intel?
    sha256 "9bf33b0b8efeebe78e22f8c066bc43fefb0209112dba7327886e09ba1ae0107d"
  else
    sha256 "d0e82ed7e7bfe9ce2844346879736b64b2dee73f33f684cbcc6bc9d8962390c1"
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
