cask 'autodmg' do
  version '1.5.5'
  sha256 'ab6af0acdb3a7047f3108175e78519192703d61161923610c98713930d3cf1b7'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: '107410ee70bcf2934eb7e8251eef94ea959740f86e2cd40c7227f037799c8b15'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'
  license :apache

  app 'AutoDMG.app'
end
