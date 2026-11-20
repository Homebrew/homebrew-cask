cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "24.0.1"
  sha256 arm:   "7431c4035d06f27e8740fa58cc8ca31f6a0daad0f7744abd5f3748737c52fda3",
         intel: "a775f005692ee952aace085f990b46b53efa3577464a88e2841282a7f220412c"

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
