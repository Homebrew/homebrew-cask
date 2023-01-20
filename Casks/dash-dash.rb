cask "dash-dash" do
  version "18.2.0"
  sha256 "97e0eb5b4155eb63f544d6a35af0febe68c3c67192fbc5847467689ad3339880"

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
