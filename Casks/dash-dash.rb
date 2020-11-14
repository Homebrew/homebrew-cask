cask "dash-dash" do
  version "0.16.1.0"
  sha256 "f6f986ba23e01c268d9f537961b97159b8f5141020d1962dae58adb5cf49dbdb"

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
