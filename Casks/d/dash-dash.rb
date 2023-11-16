cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "20.0.0"
  sha256 arm:   "45e89645fe4d458f91a85c3da241f64b106350a138ee8c2747c32a023c7e5329",
         intel: "1efb395763f76f516949cb0e33a442647ea0745d53f5f44aaff59c55cee25449"

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
