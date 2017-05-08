cask 'qtpass' do
  version '1.1.6'
  sha256 '755b8f46f77ab8aeac7986845495936e3da1a3abecf4cc39ad27d8f93f1242c4'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom',
          checkpoint: '56021f84c929bfa5afc5053d46090c6b92cb94d494c12809255b2072abf373ed'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  app 'QtPass.app'
end
