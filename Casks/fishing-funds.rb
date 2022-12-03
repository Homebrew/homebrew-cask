cask "fishing-funds" do
  arch arm: "-arm64"

  version "7.0.0"
  sha256 arm:   "2c0c89f54cf0fa351fa81b2284f2dca08ecc997e8f74195ab3fd50f5479570f2",
         intel: "29378ad74572590949a504cfb8dc9cf7c91e9c94e6744819e10c90e10a5d9db3"

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
