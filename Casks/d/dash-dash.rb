cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.3"
  sha256 arm:   "e944e4bd7a0e55156a15a6d8e0e69d24c5f3e70407db03bef7b5de01947b233a",
         intel: "be46c1fe1e4730cb583c5be6a2cf51d7f7a3f9a330004f2b4a6ba7c70afad4ab"

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
