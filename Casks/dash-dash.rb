cask 'dash-dash' do
  version '0.14.0.0'
  sha256 'f5cff3feb5dd61a58b284a7b001d30606e314b722fa9d670ed6008c886a28e00'

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
