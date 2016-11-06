cask 'slicy' do
  version '1.1.7'
  sha256 '0a57becbcbb6d4de17ab27e7c011f07543c37277e2e6988f60f464c6483fee39'

  # s3.amazonaws.com/macrabbit/downloads was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/macrabbit/downloads/Slicy+#{version}.zip"
  appcast "https://update.macrabbit.com/slicy/#{version}.xml",
          checkpoint: '39d01f62bb6ab96fdee061a8077fd8cbffcafee6551d7be4bc0fe4dc20249e3d'
  name 'Slicy'
  homepage 'https://macrabbit.com/slicy/'

  app 'Slicy.app'
end
