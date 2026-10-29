cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.9"
  sha256 arm:   "ef563e3bdaf4fdc63c47b9b8c5fc3fce39675e9616f9b76199c2a78e41c9ea26",
         intel: "d08920cdad4e85ad5e7c53206ec680dfd9e4ac614fe91ae1d39f56717e38cdcc"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.zip"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Dash-Qt.app"

  preflight_steps do
    set_permissions "Dash-Qt.app", "0755"
  end

  zap trash: [
    "~/Library/Application Support/DashCore",
    "~/Library/Preferences/org.dash.Dash-Qt.plist",
    "~/Library/Saved Application State/org.dash.Dash-Qt.savedState",
  ]
end
