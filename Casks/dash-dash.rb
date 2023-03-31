cask "dash-dash" do
  version "18.2.2"
  sha256 "b70c5fb7c916f093840b9adb6f0287488843e0e69b403e99ed0bc93d34e24f85"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg",
      verified: "github.com/dashpay/dash/"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dash-Qt.app"

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", "0755"
  end
end
