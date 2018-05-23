cask 'freeze' do
  version '3.5'
  sha256 '6511d7bb80e7768ac26211eebb968410c6e593b05ebed7d35c482914e8f26ce7'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: '469858afa8355814ac364932739aa1b812fd2ed7e6d6dda636739bf9a4b745a6'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'

  zap trash: [
               '~/Library/Application Scripts/seb.GlacierMac',
               '~/Library/Containers/seb.GlacierMac',
             ]
end
