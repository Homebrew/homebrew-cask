cask 'synalyze-it-pro' do
  version '1.23.2'
  sha256 '18802f068eb7312a54109f0c1c98a1156683d77097aef0b04a0767e42e08f92d'

  # synalyze-it.com/Downloads was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast 'https://www.synalyze-it.com/SynalyzeItPro/appcast.xml'
  name 'Synalyze It! Pro'
  homepage 'https://www.synalysis.net/'

  app 'Synalyze It! Pro.app'
end
