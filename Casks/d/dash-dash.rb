cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "21.0.2"
  sha256 arm:   "66e9ea2a2aeebaa54a915a374c578bd6306da312c65af03e047f94268eb3981e",
         intel: "06f798cfd59bc589c114fec838170ac4b261b3bd9dee649582b5baa2409c7777"

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
