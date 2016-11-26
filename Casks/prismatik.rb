cask 'prismatik' do
  version '5.11.2'
  sha256 '47e7e5335c432cb9aec169b129b24fae7bb367665843c5cbaa0e49c6f0db13f5'

  # github.com/woodenshark/Lightpack was verified as official when first introduced to the cask
  url "https://github.com/woodenshark/Lightpack/releases/download/#{version}/Prismatik.#{version}.dmg"
  appcast 'https://github.com/woodenshark/Lightpack/releases.atom',
          checkpoint: 'ed21f0f168d0db0f3764fdb42fa027c394f3df5781cd504526393422fe522351'
  name 'Prismatik'
  homepage 'https://lightpack.tv/promo/lightpack1.php'

  app 'Prismatik.app'
end
