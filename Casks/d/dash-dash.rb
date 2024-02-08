cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "20.0.4"
  sha256 arm:   "4531c25710d3d99dc5388d267578025f4db9947ce929d2e7a15aadba69f7f1c1",
         intel: "36515aa5d63e205a66d0f5bdc862f410f1fe6a212211d8cf82a07fe7dde06197"

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
