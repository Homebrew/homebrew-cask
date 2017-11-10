cask 'dash-dash' do
  version '0.12.2.0'
  sha256 '652682710afa82bf256d9335aaf677d0ebe8db372d854cad078a47622142ec97'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom',
          checkpoint: '0ff584beb1ec4bb12d1212992a8287b6632bd15ff5dc140b396d4b6e10307e3b'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
