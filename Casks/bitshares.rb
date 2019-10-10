cask 'bitshares' do
  version '3.1.19061,8.5'
  sha256 'e4a6b6520bee314ac9635b78d2baaf13b11521a39e7e3dae4575087f6c3256bb'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version.before_comma}#{version.after_comma}/BitShares-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end
