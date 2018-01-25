cask 'mos' do
  version '1.7.0'
  sha256 '84002cd43e682adf6c04643260b64ebd44d0e2af50117541a6ae7c7b89cf7391'

  # github.com/Caldis/Mos was verified as official when first introduced to the cask
  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Version.#{version}.dmg"
  appcast 'https://github.com/Caldis/Mos/releases.atom',
          checkpoint: '0824522cc30c9cd5e3923392828d7039c35d03bab5cd7d78335b8b0b32cd1d27'
  name 'Mos'
  homepage 'http://mos.u2sk.com/'

  app 'Mos.app'

  zap trash: '~/Library/Preferences/com.u2sk.Mos.plist'
end
