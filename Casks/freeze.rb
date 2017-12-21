cask 'freeze' do
  version '3.3.1'
  sha256 '3fad8e32f0f02cdf24737d5ea173d4284df1a7a8fea1a441bff5ed640bd96bd9'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: '99acb90280069d9da1a7d22a49501d2696d9a20b203c44bf81ff07874c6f6dee'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'

  zap trash: [
               '~/Library/Application Scripts/seb.GlacierMac',
               '~/Library/Containers/seb.GlacierMac',
             ]
end
