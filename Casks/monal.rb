cask 'monal' do
  version '2b6'
  sha256 'fdc28726d1387571e44202f943ff3b16ad4078104e6d2b6b461b34f0348d382d'

  url 'http://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          checkpoint: '8303a6fd9f0389e1288716f5ac4a6d6cba677f0713867766c9b526e26b10518f'
  name 'Monal'
  homepage 'https://monal.im/'

  app 'Monal.app'
end
