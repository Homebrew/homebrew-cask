cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "24.0.2"
  sha256 arm:   "9b91ac4ef73f9b4aa42f7d9cabcee444e595aeaaf48abb3d733184c5de912990",
         intel: "354b0794950664838905ce5f9405046be1f584ad8f4860a712a00df5de4394f4"

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
