cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.7"
  sha256 arm:   "40208e470cf8282d781c77d19689d3eeffea786f5c54097006bb87f92f2fe055",
         intel: "31f9093eccfe5f44fa51ddc2922d777448af71529aca1f1a1c66e2a32d7b9eb7"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.zip",
      verified: "github.com/dashpay/dash/"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

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
