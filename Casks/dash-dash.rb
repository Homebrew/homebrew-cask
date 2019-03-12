cask 'dash-dash' do
  version '0.13.1.0'
  sha256 '8b89be3f47a45d86fda1015f07bac4dbfeab72b1636ee6837de467fe1dfe960d'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
