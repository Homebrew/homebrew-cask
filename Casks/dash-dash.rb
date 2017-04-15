cask 'dash-dash' do
  version '0.12.1.5'
  sha256 'b4514d4a705cc1adb400ec0c69630612fe394508decd7bf3edef068021fc47b5'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom',
          checkpoint: '73c3805f3f146a3405c11be77a27db35e4483951e1e257fb1f6877930c2bf135'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
