cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "22.1.3"
  sha256 arm:   "c7b7842cce5d2dbef5fe339b5e96730dd2483716169db81e6045acc1cabed271",
         intel: "f7e84707a6fce85176c5d613b391ec269657d9a3feed32f910da538c2251da3d"

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
