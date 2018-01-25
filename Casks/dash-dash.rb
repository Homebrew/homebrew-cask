cask 'dash-dash' do
  version '0.12.2.2'
  sha256 '53fe3ec4d0572d906c7ef0f47deaa3c1c18ba57ba3f2121eb18d836f1201aa1c'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom',
          checkpoint: 'ed223b7aca79e10abb51ee21e3e8232962dc63072cfeec4a9b41ae56ff1d34d0'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
