cask 'dash-dash' do
  version '0.13.0.0'
  sha256 '6f97f502732e5b63a431d0edb5a9d14e95ff8afb8e7eb94463566a75e7589a70'

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
