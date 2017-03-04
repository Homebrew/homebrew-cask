cask 'qtpass' do
  version '1.1.6'
  sha256 '755b8f46f77ab8aeac7986845495936e3da1a3abecf4cc39ad27d8f93f1242c4'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: '1cc4e299e99dd1fd06f1dbee73f20132aad8e6d4f382e5e80cef9ca624e73c89'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  app 'QtPass.app'
end
