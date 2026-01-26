cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.0.2"
  sha256 arm:   "dd960c061838b130f413ce88dcc0194c1d9b19a4659b3cec443b8c3237222eca",
         intel: "0978e6ab15a39877f29a0d1a56e96a624265fd9af49ff5108a3f79eab7493659"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.zip",
      verified: "github.com/dashpay/dash/"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

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
