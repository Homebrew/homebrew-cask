cask 'gtkwave' do
  version '3.3.87'
  sha256 'e9e3cdfd06f76ed4de8b29d55a29f9b714a68a00501b13b4741078a506d1cc8a'

  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss',
          checkpoint: 'bea1232122ff24237497ea61cbfabc2900cc2590059eb32b66524bfbcd9515bf'
  name 'GTKWave'
  homepage 'http://gtkwave.sourceforge.net/'

  app 'gtkwave.app'
end
