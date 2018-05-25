cask 'gtkwave' do
  version '3.3.90'
  sha256 'ef93f018ebac8a09e584ad332f81cac6b9186379086fd31176e25d0f632f263b'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: '0281ba2d546c1becd31b339a1c4ad51f9bd738c49cbe2be158176c2d68405b56'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
