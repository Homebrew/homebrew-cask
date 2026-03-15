cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "23.1.2"
  sha256 arm:   "88ed839f9c664f3260ad9f0a11447c73c4d053e97bc135cf5698a4fdd0c96e64",
         intel: "d4564a92048d890a8a31643713183c0bbe20287e471024159dda379b454d5dc6"

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
