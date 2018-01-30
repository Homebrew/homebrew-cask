cask 'insomnia' do
  version '5.14.3'
  sha256 '254345e1cc665ae1cf29605a1f183e810f240117c28a76fac7e6374d04d2d0bd'

  # github.com/getinsomnia/insomnia was verified as official when first introduced to the cask
  url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  appcast 'https://github.com/getinsomnia/insomnia/releases.atom',
          checkpoint: '2784f1db461ee9cabc70ce699033272a37952c71708bd9e59ffe0b39a464214e'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap trash: [
               '~/Library/Application Support/Insomnia',
               '~/Library/Caches/com.insomnia.app',
               '~/Library/Caches/com.insomnia.app.ShipIt',
               '~/Library/Cookies/com.insomnia.app.binarycookies',
               '~/Library/Preferences/com.insomnia.app.helper.plist',
               '~/Library/Preferences/com.insomnia.app.plist',
               '~/Library/Saved Application State/com.insomnia.app.savedState',
             ]
end
