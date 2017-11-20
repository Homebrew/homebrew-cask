cask 'mos' do
  version '1.7.0'
  sha256 '84002cd43e682adf6c04643260b64ebd44d0e2af50117541a6ae7c7b89cf7391'

  # github.com/Caldis/Mos/releases/download was verified as official when first introduced to the cask
  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Version.#{version}.dmg"
  name 'Mos'
  homepage 'http://mos.u2sk.com/'

  app 'Mos.app'

  zap trash: [
               '~/Library/Preferences/com.u2sk.Mos.plist',
             ]
end
