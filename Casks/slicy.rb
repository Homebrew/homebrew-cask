cask 'slicy' do
  version '1.1.7'
  sha256 '0a57becbcbb6d4de17ab27e7c011f07543c37277e2e6988f60f464c6483fee39'

  url 'https://macrabbit.com/slicy/get/'
  appcast 'https://update.macrabbit.com/slicy/1.1.3.xml',
          checkpoint: '39d01f62bb6ab96fdee061a8077fd8cbffcafee6551d7be4bc0fe4dc20249e3d'
  name 'Slicy'
  homepage 'http://macrabbit.com/slicy/'
  license :commercial

  app 'Slicy.app'
end
