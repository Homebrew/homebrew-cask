cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.10"
  sha256 arm:   "3be15b5ed88424b08d672ff0897e020f2aa15dc43fa273eec78d72b56b5464d6",
         intel: "e15ad152fcf20802824951da0353483c82c19970d11da5e6d945eb9dc7a9e019"

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

  uninstall quit: "org.dash.Dash-Qt"

  zap trash: [
    "~/Library/Application Support/DashCore",
    "~/Library/Preferences/org.dash.Dash-Qt.plist",
    "~/Library/Saved Application State/org.dash.Dash-Qt.savedState",
  ]
end
