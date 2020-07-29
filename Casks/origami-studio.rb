cask 'origami-studio' do
  version '131604203'
  sha256 'ba26f6b289adb6d883074c0e42e385b867dff42df4b356a15a2f431e7cac4967'

  # fb.me/ was verified as official when first introduced to the cask
  url 'https://fb.me/getorigamistudio'
  appcast 'https://www.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571'
  name 'Origami Studio'
  homepage 'https://origami.design/'

  depends_on macos: '>= :sierra'

  app 'Origami Studio.app'
end
