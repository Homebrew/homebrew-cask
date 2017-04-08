cask 'dash-dash' do
  version '0.12.1.4'
  sha256 '87fc8e522333d3a81a40bd4e8dfed06764f801d05d24fe06605809e6c2f7d563'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom',
          checkpoint: '0755eaaccab81b56aec765cdb64dd85ea08e8fcd44addb40e1e8fb7c7d4e5af3'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
