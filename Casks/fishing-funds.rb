cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.1"

  if Hardware::CPU.intel?
    sha256 "e50274da9feaa26a06bf3c2863790eb01452829a956698c316ef425272025cc7"
  else
    sha256 "a471103cdb5546887e104bffa09e39fec0e6b705bf445f695af49753a2a7239d"
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
