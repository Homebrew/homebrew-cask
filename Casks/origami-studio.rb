cask 'origami-studio' do
  version '2.5'
  sha256 '3d47d5119184bbb59125d7ed2c75a75c375d8a0e04a7ce3dcb0604a83c649482'

  # fb.me/getorigamistudio was verified as official when first introduced to the cask
  url 'https://fb.me/getorigamistudio'
  appcast 'https://www.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571'
  name 'Origami Studio'
  homepage 'https://origami.design/'

  app 'Origami Studio.app'
end
