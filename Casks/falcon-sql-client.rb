cask "falcon-sql-client" do
  version "4.1.0"
  sha256 "5a2487c9afcf2465b2302c9e1174765f02c583e81409d47bca8c155cccfcdf00"

  # github.com/plotly/falcon/ was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon/releases/download/v#{version}/mac-falcon-v#{version}.zip"
  appcast "https://github.com/plotly/falcon/releases.atom"
  name "Falcon SQL Client"
  desc "Free, open-source SQL client"
  homepage "https://plot.ly/free-sql-client-download/"

  app "Falcon SQL Client.app"

  zap trash: [
    "~/.plotly",
    "~/Library/Preferences/com.electron.falcon-sql-client.helper.plist",
    "~/Library/Preferences/com.electron.falcon-sql-client.plist",
    "~/Library/Saved Application State/com.electron.falcon-sql-client.savedState",
  ]
end
