cask 'openconnect-gui' do
  version '1.5.1'
  sha256 'b2c338cfe9d0725bee98893225449e27cf7e337d43b0f8b08aec96de6f761f08'

  # github.com/openconnect/openconnect-gui was verified as official when first introduced to the cask
  url "https://github.com/openconnect/openconnect-gui/releases/download/v#{version}/openconnect-gui-#{version}-Darwin.dmg"
  appcast 'https://github.com/openconnect/openconnect-gui/releases.atom'
  name 'OpenConnect-GUI'
  homepage 'https://openconnect.github.io/openconnect-gui/'

  app 'openconnect-gui.app'
end
