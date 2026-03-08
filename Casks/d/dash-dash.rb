cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.0"
  sha256 arm:   "dd8751ac2f5b7c92ffd19ac9446ab4b250ef3008ce96e3586ed827256173daef",
         intel: "64563c6dada40286716439f6b43f4d18ebdf9bd154ede634acc9c74c4659356c"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.zip",
      verified: "github.com/dashpay/dash/"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

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
