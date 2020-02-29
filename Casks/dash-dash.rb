cask 'dash-dash' do
  version '0.15.0.0'
  sha256 '09f76396217eef6e5a7ba464d9b1f5abd78925b314f663bb709fdb02013899df'

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
