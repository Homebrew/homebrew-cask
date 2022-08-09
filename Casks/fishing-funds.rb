cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.2.1"

  if Hardware::CPU.intel?
    sha256 "aabf27b66cfcdd01ef95f3e88231444f2f5d37b1d5e922423a2f6907440bb73e"
  else
    sha256 "83f4dd857aba2e127b6514f8be6f3ae5e44d491c4b357eb715bafe1f17da483d"
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
