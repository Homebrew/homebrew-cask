cask 'dash-dash' do
  version '0.12.2.1'
  sha256 'dd6363895c6b15dcff4aec873b19d7fcee857e8de4f5331a85693d92c039d19f'

  # github.com/dashpay/dash was verified as official when first introduced to the cask
  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg"
  appcast 'https://github.com/dashpay/dash/releases.atom',
          checkpoint: '15ad74f7f67d923ed4989824d5fc6a39171398708d107bf8f812d854d3e6d078'
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
