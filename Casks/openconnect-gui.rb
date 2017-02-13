cask 'openconnect-gui' do
  version '1.5.1'
  sha256 :no_check

  # github.com/openconnect/openconnect-gui/releases/download/v was verified as official when first introduced to the cask
  url "https://github.com/openconnect/openconnect-gui/releases/download/v#{version}/openconnect-gui-#{version}-Darwin.dmg"
  appcast 'https://github.com/openconnect/openconnect-gui/releases.atom',
          checkpoint: '3531d36df88eb1e5b360809181473c0caf5ef638a269da325d185569ac416995'
  name 'OpenConnect-GUI'
  homepage 'https://openconnect.github.io/openconnect-gui'

  app 'openconnect-gui.app'
end
