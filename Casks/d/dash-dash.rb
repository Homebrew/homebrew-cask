cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "24.0.3"
  sha256 arm:   "3dbbc17323e8f6beda801af9e009b6d82f2b78edd1bc7d637651df3e876244e2",
         intel: "f693743e44888fda428f2a1bab69294cce778d2a3ebbf2c19d394e0628dc4220"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.zip"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Dash-Qt.app"

  preflight_steps do
    set_permissions "Dash-Qt.app", "0755"
  end

  uninstall quit: "org.dash.Dash-Qt"

  zap trash: [
    "~/Library/Application Support/DashCore",
    "~/Library/Preferences/org.dash.Dash-Qt.plist",
    "~/Library/Saved Application State/org.dash.Dash-Qt.savedState",
  ]
end
