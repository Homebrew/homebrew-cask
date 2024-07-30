cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "21.0.0"
  sha256 arm:   "8c48ed7ae2f9f193dd05f12ed77bd9096e4b6fc69b3528631f526dc1d800faf8",
         intel: "98d887b0a48a349928b45c21ffb415adcd7f6c1c00ae46e47062b582ebe2db02"

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
