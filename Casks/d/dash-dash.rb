cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.4"
  sha256 arm:   "2860078c5e64d2c73e44adfb058cdf663d0f5d9b1bac0d6905f9a9cfdd7fac3b",
         intel: "bb153db622f091a2f6faab088377ddaa15e1d66b3cfde7842b3fa8e3aee3d24e"

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
