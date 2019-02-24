cask 'iconizer' do
  version '2.6.1'
  sha256 '46e6a7a0cd08b2ead59133a13da11ef5f99b0e5f6710f78d9cce8f12d9d43059'

  # github.com/raphaelhanneken/iconizer was verified as official when first introduced to the cask
  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg"
  appcast 'https://github.com/raphaelhanneken/iconizer/releases.atom'
  name 'Iconizer'
  homepage 'https://raphaelhanneken.github.io/iconizer/'

  auto_updates true

  app 'Iconizer.app'
end
