cask "dash-dash" do
  version "0.16.0.1"
  sha256 "6a66a5ad99168cd1babc47e43712b038bbd94e25e0f73d5fb77fb6a76c06919d"

  # github.com/dashpay/dash/ was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast "https://github.com/dashpay/dash/releases.atom"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  app "Dash-Qt.app"

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", "0755"
  end
end
