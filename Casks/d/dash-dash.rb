cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "20.1.1"
  sha256 arm:   "d6d87100363bf91c234fd010ef309c8d1240e2cf79caabebfe3ae3926772befb",
         intel: "f8ce10ea2ba353260cf2b02ca308e7f0756525ae4966e7444d04096ccfbde886"

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
