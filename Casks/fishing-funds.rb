cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.0.1"
  sha256 arm:   "18da83cc303deb279be8a26263661705dbc8034a07657c07569f2b96bf7977c3",
         intel: "9770c8030a4a247350488f7b37a3087bcbe8e23e8ebf5664664430db7e8f2c39"

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
