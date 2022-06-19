cask "fishing-funds" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.1.0"

  if Hardware::CPU.intel?
    sha256 "a395b84d08b2a97c149b3b218f1d83e73200e05c28e3353d4d26f004601278dd"
  else
    sha256 "3d8a14f7e329cd897015e4614c13f52eff4f3e2c0a7ad3d0ffa0c834cf1134ce"
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
