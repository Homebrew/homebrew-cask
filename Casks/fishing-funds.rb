cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.2.0"

  if Hardware::CPU.intel?
    sha256 "0c369126610bfd5a92efd5906b3a7cceac7df1d50df1cc3b0383ee27fffd4b0c"
  else
    sha256 "ed69cd95831b6fe6b9845ea87e7a6dd2a9f73a6e0f8b212e606e030db109a9b7"
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
