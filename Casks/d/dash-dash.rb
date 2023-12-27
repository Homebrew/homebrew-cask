cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "20.0.3"
  sha256 arm:   "5e93a5accf1e76ae90a06934028ac84ec75cc5ca9fa842d52307120b77b455a5",
         intel: "02ac3276b8b24cbdecb70662add23fdc5893a759631ce006da2009aedc50b8bf"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.dmg",
      verified: "github.com/dashpay/dash/"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

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
