cask 'iconizer' do
  version '2.6.3'
  sha256 '8a469839c90b8b5206e51dd3e39a6c580cc9a89bcc0ab9b92fdf90650c679d50'

  # github.com/raphaelhanneken/iconizer was verified as official when first introduced to the cask
  url "https://github.com/raphaelhanneken/iconizer/releases/download/#{version}/Iconizer.dmg"
  appcast 'https://github.com/raphaelhanneken/iconizer/releases.atom'
  name 'Iconizer'
  homepage 'https://raphaelhanneken.github.io/iconizer/'

  auto_updates true

  app 'Iconizer.app'
end
