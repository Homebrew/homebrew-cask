cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "22.1.2"
  sha256 arm:   "64c544150e4e296f77dcea9c628a244e784d4f8f1c2ffe38fdabeb40d4499d8b",
         intel: "e53adf31ab8701b0c5f866cc86e9a102a8717497939e2c0d3b98d5035f018469"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.zip",
      verified: "github.com/dashpay/dash/"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

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
