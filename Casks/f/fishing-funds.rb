cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.4.1"
  sha256 arm:   "70cf867ee678f722f93539b32ff90afb6e504dd23c026dc4afd4c12730f60bb3",
         intel: "a8d8f8753e29ada7bc44b6794ced500f4ae060de7bbfc0d0b2918b5b15dc7436"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  depends_on macos: ">= :big_sur"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
