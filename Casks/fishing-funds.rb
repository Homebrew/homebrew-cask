cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.6.0"

  if Hardware::CPU.intel?
    sha256 "8a130e705576de17cf2c01b527546a0eaad02a51a8a41f27223e9e600a28b005"
  else
    sha256 "72a806351ef31345abb0b6b7ba5446e26cb0047737d550d5ae296f0a999f7022"
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
