cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "21.1.0"
  sha256 arm:   "fb94a9213a8763ad2d290b8ddc63be5d63d94124c324387e3228b033dc368890",
         intel: "ee72b4004186e00ce0ee5fca2c299842cb64a8622e4c09e0356fd75c60ffcf7e"

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
