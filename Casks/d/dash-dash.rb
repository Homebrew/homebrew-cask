cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "24.0.0"
  sha256 arm:   "99f512900891cdc6988cd430d72deb3aeefe5dab7cf9e2f4d3b1dc85c86623e8",
         intel: "393133bb99a69263572e57bfe42e73d78062a6c91f36df4fd2f5149b198d4fd0"

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
