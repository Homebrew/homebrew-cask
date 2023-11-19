cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "20.0.1"
  sha256 arm:   "ab530f72d2bfbfcd7fca0644e3ea5c5b279e2204fe50ff7bd9cc452a0d413c65",
         intel: "5373a84f49e4f76bd04987806f5fcde0b537fa1408e1f98370680f3f5134970f"

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
