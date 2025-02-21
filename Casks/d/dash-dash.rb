cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "22.1.1"
  sha256 arm:   "74a270b2e8339436f7cf86675d6b94dc82f4bc8dcb2c3dad072549d667813d35",
         intel: "f4e22b05bbbac85b0b6d9d7656ffc99be8e88d983a06e6d8494edadcfd3bb0fc"

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
