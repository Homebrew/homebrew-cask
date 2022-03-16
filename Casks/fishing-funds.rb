cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.7.2"

  if Hardware::CPU.intel?
    sha256 "cf2c99e8b71274a7d9cf3785f5b0dc14aa53f33c2f74cb70f063c6b4b130ad0a"
  else
    sha256 "d458e1ae9c76080bb40180b6e326b2cde96edf06ec149b7666cbcd7cf0b8c490"
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
