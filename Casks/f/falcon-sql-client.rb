cask "falcon-sql-client" do
  version "4.1.0"
  sha256 "5a2487c9afcf2465b2302c9e1174765f02c583e81409d47bca8c155cccfcdf00"

  url "https://github.com/plotly/falcon/releases/download/v#{version}/mac-falcon-v#{version}.zip",
      verified: "github.com/plotly/falcon/"
  name "Falcon SQL Client"
  desc "Free, open-source SQL client"
  homepage "https://plot.ly/free-sql-client-download/"

  deprecate! date: "2024-06-17", because: :repo_archived

  app "Falcon SQL Client.app"

  zap trash: [
    "~/.plotly",
    "~/Library/Preferences/com.electron.falcon-sql-client.helper.plist",
    "~/Library/Preferences/com.electron.falcon-sql-client.plist",
    "~/Library/Saved Application State/com.electron.falcon-sql-client.savedState",
  ]
end
