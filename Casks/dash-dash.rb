cask 'dash-dash' do
  version '0.12.0.58'
  sha256 '09af72ac52e3c5a62a4eb735a0cd3609c90808a54663b0fe1e5bd6a5f9a7745c'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dash-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom',
          checkpoint: 'ae9b81edbf9bb5651ddd278a9b1952b173198b45592f82f8cfd9c26fad700758'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
