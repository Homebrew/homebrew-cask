cask 'mudlet' do
  version '3.0.0'
  sha256 'ff255617dc3b566529f3147d1c4b6a4a200344bbe2925788a26cd115b5f0cfff'

  url "http://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom',
          checkpoint: 'ce9dad74f3aa718606dab97081a2abb691a4a497b1be63b4da6a46db1ef3138a'
  name 'Mudlet'
  homepage 'http://www.mudlet.org/'

  app 'Mudlet.app'
end
