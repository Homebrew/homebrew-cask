cask 'mudlet' do
  version '3.5.0'
  sha256 '6a12a2dac34792a7934c1b2171df2d8845f9d8415fb51ebbc7c205a62270c553'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom',
          checkpoint: '9a29dc69d12a1368051e4a75abc0ec3d75e20138c00cfa3c60d4db2fcc53c8e5'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
