cask 'oni' do
  version '0.2.8'
  sha256 '6a0fed2f9b618b4d4c0be4e268e3f6255adc07b98e2fdd51387eb123d0b1382e'

  url "https://github.com/extr0py/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast 'https://github.com/extr0py/oni/releases.atom',
          checkpoint: 'a75cba06d24854eaf8e5da42e7c13c87849cbacd1816e766c40524eb26460eb9'
  name 'Oni'
  homepage 'https://github.com/extr0py/oni'

  app 'Oni.app'

  zap delete: '~/Library/Saved Application State/com.extropy.oni.savedState',
      trash:  [
                '~/.oni',
                '~/Library/Application Support/oni',
                '~/Library/Preferences/com.extropy.oni.helper.plist',
                '~/Library/Preferences/com.extropy.oni.plist',
              ]
end
