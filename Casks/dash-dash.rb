cask 'dash-dash' do
  version '0.12.3.2'
  sha256 '3de18efe376e60a77d80e3daf3e7e2eb43a145e75c8da69368a1d018ba683de5'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx-unsigned.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
