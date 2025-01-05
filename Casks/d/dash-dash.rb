cask "dash-dash" do
  arch arm: "arm64", intel: "x86_64"

  version "22.0.0"
  sha256 arm:   "8411b317a2c4cb5cf279a667b72203f308d58701d58dfbebc3a999113d0cfda4",
         intel: "647ba48f9555de99bb19c1a6538044ddf255aa49a851ea74d3d2d03aab28d463"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-#{arch}-apple-darwin.dmg",
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
