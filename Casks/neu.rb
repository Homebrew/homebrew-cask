cask 'neu' do
  version '1.2.1'
  sha256 '7d46be5ae865882553887f0942fe7d441b71b70a4ad593d3f72c897c47642552'

  url "http://downloads.elegantchaos.com/neu/neu-v#{version}.zip"
  appcast 'http://sparkle.elegantchaos.com/neu/appcast.xml',
          checkpoint: '68beadae296c67137c75c6caee84ccb5c3ede8019c239cda59342255faa19f50'
  name 'Neu'
  homepage 'http://www.elegantchaos.com/neu/'

  app "neu-v#{version}/Neu.app"
end
