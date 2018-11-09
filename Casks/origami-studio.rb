cask 'origami-studio' do
  version :latest
  sha256 :no_check

  # fb.me/getorigamistudio was verified as official when first introduced to the cask
  url 'https://fb.me/getorigamistudio'
  appcast 'https://www.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571'
  name 'Origami Studio'
  homepage 'https://origami.design/'

  app 'Origami Studio.app'
end
