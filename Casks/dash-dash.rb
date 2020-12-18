cask "dash-dash" do
  version "0.16.1.1"
  sha256 "49a5ca7364b62f9908239e12da8181c9bbe8b7ca6508bc569f05907800af084c"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg",
      verified: "github.com/dashpay/dash/"
  appcast "https://github.com/dashpay/dash/releases.atom"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  app "Dash-Qt.app"

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", "0755"
  end
end
