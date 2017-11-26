cask 'manico' do
  version '2.3.1'
  sha256 '2dd2b5a3722fa12ede43d8d74d62896bf8d1078f25f01584501e98b2d045294b'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: 'f8226c8322d279b800c311381b28f935ba7f2afc1afc6f49cb5ea5ec03ba504b'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end
