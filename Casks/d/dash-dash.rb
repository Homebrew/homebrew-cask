cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.8"
  sha256 arm:   "7655928b3b9d8db99c91937a0213ff67e55cb726d9b2a73c5eaaa3613133db76",
         intel: "2af95a7a4d33d2f2fafb4b0af9f947935aa8dc0b5e34048c7998e65e43601f18"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.zip"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

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
