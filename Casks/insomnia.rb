cask 'insomnia' do
  version '5.9.5'
  sha256 'ec9145609405061026ce77a0c4479a607195edf8b91319f9449e28c8afd31e8e'

  # github.com/getinsomnia/insomnia was verified as official when first introduced to the cask
  url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  appcast 'https://github.com/getinsomnia/insomnia/releases.atom',
          checkpoint: 'a985f2696b1e91e54795fd81af322dd93abe5d7b52709e18fadd0b0a4090ff49'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Caches/com.insomnia.app.ShipIt',
                '~/Library/Cookies/com.insomnia.app.binarycookies',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Insomnia',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
              ]
end
