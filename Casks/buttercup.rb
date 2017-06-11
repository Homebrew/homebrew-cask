cask 'buttercup' do
  version '0.17.2'
  sha256 '4f4f73c784125d5a64481b9d40c4ff1a55174b6577e996257a38a97f4e5f1ac2'

  # github.com/buttercup/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup/releases.atom',
          checkpoint: '9e21c7857d8ec661e3b3ae51f147f27158f02330bc79d7b0f61a31e6548f9e3d'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
