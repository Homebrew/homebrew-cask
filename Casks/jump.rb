cask 'jump' do
  version '7.1.3'
  sha256 '5750edecdd4f2f2f15ae2be34494c1a171a6b69c73c62885f2cb66916c752126'

  url 'https://jumpdesktop.com/downloads/jdmac'
  appcast 'https://jumpdesktop.com/downloads/viewer/jdmac-web-appcast.xml',
          checkpoint: '9474ab62c55742147d5c88209f116ecb06fb14d0c0988a535cbadc1f236fabbc'
  name 'Jump Desktop'
  homepage 'https://jumpdesktop.com/#jdmac'

  app 'Jump Desktop.app'
end
