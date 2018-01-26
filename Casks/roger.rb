cask 'roger' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/placepixel-images/_walkietalkie_ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/placepixel-images/_walkietalkie_/last/Roger.dmg'
  name 'Roger'
  homepage 'http://www.useroger.com/'

  app 'Roger.app'

  uninstall login_item: 'Roger',
            quit:       'com.placepixel.Roger'

  zap trash: [
               '~/Library/Caches/com.placepixel.Roger',
               '~/Library/Preferences/com.placepixel.Roger.plist',
               '~/Library/Application Support/com.placepixel.Roger',
             ]
end
