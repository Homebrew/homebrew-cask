cask 'iconizer' do
  version '2.6.2'
  sha256 '65dc0c404f4cee91c3937212f5e29ee29c96162699d15dd601abb5faf595e713'

  # github.com/raphaelhanneken/iconizer was verified as official when first introduced to the cask
  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg"
  appcast 'https://github.com/raphaelhanneken/iconizer/releases.atom'
  name 'Iconizer'
  homepage 'https://raphaelhanneken.github.io/iconizer/'

  auto_updates true

  app 'Iconizer.app'
end
