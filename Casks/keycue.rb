cask :v1 => 'keycue' do
  version '7.5'
  sha256 '8d2ae27ac7a623e3cdcfe939caf996e81e39e3dbb7452f1a634b24dbe5050ad3'

  url "http://www.ergonis.com/downloads/products/keycue/KeyCue#{version.delete('.')}-Install.dmg"
  name 'KeyCue'
  homepage 'http://www.ergonis.com/products/keycue/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'KeyCue.app'
end
