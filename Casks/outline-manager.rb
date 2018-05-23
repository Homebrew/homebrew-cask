cask 'outline-manager' do
  version '1.0.5'
  sha256 '4d5298ff1db0a012058e200891e8c0825b808b7d5a670199751c4d6cfce2aef3'

  # github.com/Jigsaw-Code/outline-server was verified as official when first introduced to the cask
  url "https://github.com/Jigsaw-Code/outline-server/releases/download/v#{version}/Outline-Manager.dmg"
  appcast 'https://github.com/Jigsaw-Code/outline-server/releases.atom',
          checkpoint: '9ff5eeb367e86a7c8f5c0c4fd4e725f843fe30475cb3bd0815da5202757ec180'
  name 'Outline Manager'
  homepage 'https://www.getoutline.org/'

  app 'Outline Manager.app'
end
