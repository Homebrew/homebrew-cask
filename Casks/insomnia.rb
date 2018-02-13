cask 'insomnia' do
  version '5.14.3'
  sha256 '254345e1cc665ae1cf29605a1f183e810f240117c28a76fac7e6374d04d2d0bd'

  # github.com/getinsomnia/insomnia was verified as official when first introduced to the cask
  url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  appcast 'https://github.com/getinsomnia/insomnia/releases.atom',
          checkpoint: '9f81c72c63fd36a5a9e4fc3535bfa8dfd5065b9f9e461fd0c92c9ddf4ca9bf4f'
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
