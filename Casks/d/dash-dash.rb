cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "20.0.2"
  sha256 arm:   "83a3f31c5e1b871b3182024b96df5f47f0d584788ad334ad5499da095e180943",
         intel: "3daf0f5b6cb4082fc77b467b41b3e13e486028b1d623033bbd0ff748a4353813"

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
