cask "dash-dash" do
  version "19.0.0"
  sha256 "2cd3d585d96135c8bd913d69fb982ab11cabb7e0a9ee9d156bc364366b377b07"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg",
      verified: "github.com/dashpay/dash/"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dash-Qt.app"

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", "0755"
  end

  zap trash: [
    "~/Library/Application Support/DashCore",
    "~/Library/Preferences/org.dash.Dash-Qt.plist",
    "~/Library/Saved Application State/org.dash.Dash-Qt.savedState",
  ]
end
