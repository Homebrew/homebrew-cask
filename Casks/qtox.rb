cask 'qtox' do
  version '1.14.1'
  sha256 'adda4475b7bf23bf08ef940bcdca1b21c37771ecf922e537f79d4baa6d651940'

  # github.com/qTox/qTox was verified as official when first introduced to the cask
  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg"
  appcast 'https://github.com/qTox/qTox/releases.atom',
          checkpoint: '9b88b3b5d8f80a156877406f0397cd43c0207fa96c3d35013e5d877ce647316b'
  name 'qTox'
  homepage 'https://qtox.github.io/'

  app 'qTox.app'
end
