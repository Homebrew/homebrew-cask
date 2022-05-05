cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.0.0"

  if Hardware::CPU.intel?
    sha256 "87496bfd85f350fecfef20f274115763debe01130104924041b171411c296ed1"
  else
    sha256 "5f63f6ba646d90d789dd071e8e36761c5fddaf9baec19c1ae8fb4c9fc7490860"
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
