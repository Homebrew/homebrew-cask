cask 'dash-dash' do
  version '0.12.2.3'
  sha256 '90ca27d6733df6fc69b0fc8220f2315623fe5b0cbd1fe31f247684d51808cb81'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom',
          checkpoint: '0b3aafa287ffd57f2e1f5cb672b449c655166e3249f976848ccccb0852822f78'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
