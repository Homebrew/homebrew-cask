cask "bdash" do
  version "1.19.1"
  sha256 "d2c3e59f768e9204220fd9e58cf63ee67f9a2838b4650f0f2800a3fb447b41bf"

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-universal-mac.zip"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bdash.app"

  zap trash: [
    "~/.bdash",
    "~/Library/Application Support/Bdash",
    "~/Library/Logs/Bdash",
    "~/Library/Preferences/io.bdash.plist",
    "~/Library/Saved Application State/io.bdash.savedState",
  ]
end
